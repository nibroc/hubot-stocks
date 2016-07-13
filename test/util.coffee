module.exports = 
  QUOTE_GOOG_DATA: {
    symbol: 'GOOG',
    name: 'Alphabet Inc.',
    price: '716.98',
    change: '-3.66',
    marketCapitalization: '492.25B',
    volume: '935876',
    averageVolume: '1840880',
    day: {
      low: '716.85',
      high: '724.00'
    },
    year: {
      low: '565.00',
      high: '789.87'
    }
  }

  QUOTE_GOOG_JSON: '{"query":{"count":1,"created":"2016-07-14T03:14:40Z","lang":"en-US","results":{"quote":{"symbol":"GOOG","AverageDailyVolume":"1840880","Change":"-3.66","DaysLow":"716.85","DaysHigh":"724.00","YearLow":"565.00","YearHigh":"789.87","MarketCapitalization":"492.25B","LastTradePriceOnly":"716.98","DaysRange":"716.85 - 724.00","Name":"Alphabet Inc.","Symbol":"GOOG","Volume":"935876","StockExchange":"NMS"}}}}'

  QUOTE_GOOG_MSG: 
    'Alphabet Inc. (GOOG) | Price: 716.98 (-3.66%) | Day: 716.85 - ' + 
    '724.00 | Year: 565.00 - 789.87 | Volume: 935876 (avg 1840880) |' + 
    ' Market Cap: 492.25B'
