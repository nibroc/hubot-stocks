require('coffee-errors')

Helper = require('hubot-test-helper')
chai = require('chai')
nock = require('nock')
sinon = require('sinon')

StockService = require('../src/service/stock')
util = require('./util')

expect = chai.expect

helper = new Helper('../src/stocks.coffee')

describe 'hubot-stocks', ->
  room = null

  beforeEach ->
    room = helper.createRoom()
    serviceStub = sinon.stub(StockService.prototype, 'quoteForSymbol')
    serviceStub.withArgs('goog').returns(Promise.resolve(util.QUOTE_GOOG_DATA))

  afterEach ->
    sinon.restore(StockService.prototype, "quoteForSymbol")
    room.destroy()

  context 'user requests stock quote', ->
    context '@hubot stock goog', ->
      beforeEach ->
        room.user.say 'bob', '@hubot stock goog'
      it 'will respond with quote for goog', ->
        expect(room.messages[1]).to.eql ['hubot', util.QUOTE_GOOG_MSG]
