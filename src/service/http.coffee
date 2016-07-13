HttpClient = require 'scoped-http-client'

module.exports = 
  create: (url) ->
    HttpClient
      .create(url)
      .headers('User-Agent: nibroc/hubot-stocks')
