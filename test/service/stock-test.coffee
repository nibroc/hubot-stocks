chai = require('chai')
nock = require('nock')
chaiAsPromised = require('chai-as-promised');

util = require('../util')

chai.use(chaiAsPromised);
expect = chai.expect

StockService = require('../../src/service/stock')
describe 'StockService', ->
  beforeEach ->
    do nock.disableNetConnect
    nock('http://query.yahooapis.com')
      .get('/v1/public/yql')
      .query((query) ->
        query.q.indexOf('goog') > -1
      ).reply(200, util.QUOTE_GOOG_JSON)
    @service = new StockService()

  afterEach ->
    nock.cleanAll()

  context 'quoteForSymbol', ->
    it 'correctly parses and builds quote', ->
      expect(@service.quoteForSymbol('goog')).to.become(util.QUOTE_GOOG_DATA)
