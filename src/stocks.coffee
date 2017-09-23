# Description
#   Hubot explores the stock market.
#
# Commands:
#   hubot stock symbol - Retrieves the current quote for the provided symbol
#
# Author:
#   Corbin Hughes <hughes.corbin@gmail.com>

StockService = require './service/stock'

formatQuote = (quote) ->
  "#{quote.name} (#{quote.symbol}) | Price: #{quote.price} (#{quote.change}) | " +
  "Day: #{quote.day.low} - #{quote.day.high} | " +
  "Year: #{quote.year.low} - #{quote.year.high} | " +
  "Volume: #{quote.volume} (avg #{quote.averageVolume}) | " +
  "Market Cap: #{quote.marketCapitalization}"

module.exports = (robot) ->
  @service = new StockService()

  robot.respond /stock ([a-zA-Z]+)$/, (res) =>
    @service.quoteForSymbol(res.match[1])
      .then (quote) ->
        if quote
          res.send formatQuote(quote)
        else
          res.send "No quote found for symbol #{res.match[1].toUpperCase()}"
      .catch (err) ->
        res.send "Unexpected error while fetching quote: #{err}"
