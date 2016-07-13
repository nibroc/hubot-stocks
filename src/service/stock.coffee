HttpClient = require './http'

fetchYql = (http, yql, callback) ->
  http.query(
    q: yql, 
    format: 'json', 
    env: 'http://datatables.org/alltables.env'
  ).get() (err, res, body) ->
    callback(err, res, body)

parseQuoteForSymbol = (response) ->
  results = response.query.results.quote
  {
    symbol: results.symbol,
    name: results.Name,
    price: results.LastTradePriceOnly,
    change: results.Change,
    marketCapitalization: results.MarketCapitalization,
    volume: results.Volume,
    averageVolume: results.AverageDailyVolume,
    day: {
      low: results.DaysLow,
      high: results.DaysHigh
    },
    year: {
      low: results.YearLow,
      high: results.YearHigh
    }
  }

class StockService
  constructor: ->
    @http = HttpClient
      .create('http://query.yahooapis.com/v1/public/yql')
      .headers(Accept: 'application/json')

  quoteForSymbol: (symbol) ->
    yql = "select * from yahoo.finance.quote where symbol = \"#{symbol}\""
    new Promise (resolve, reject) =>
      fetchYql @http, yql, (err, res, body) ->
        if err
          reject(err)
        else
          resolve(parseQuoteForSymbol(JSON.parse(body)))

module.exports = StockService
