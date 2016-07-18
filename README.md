# hubot-stocks [![Build Status](https://travis-ci.org/nibroc/hubot-stocks.svg?branch=master)](https://travis-ci.org/nibroc/hubot-stocks)

`hubot-stocks` provides a convenient way to query stock market information from within a chat.

Currently this script can only retrieve the current quote (or at least as current as the Yahoo 
API offers), but eventually it will have support for current and historical graphs, searching
for stock symbols by names, and anything else of interest the Yahoo API offers.

See [`src/stocks.coffee`](src/stocks.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-stocks --save`

Then add **hubot-stocks** to your `external-scripts.json`:

```json
[
  "hubot-hubot-stocks"
]
```

## Sample Interactions

```
user1>> hubot stock goog
hubot>> Alphabet Inc. (goog) | Price: 719.85 (-1.10%) | Day: 719.05 - 725.74 | Year: 565.05 - 789.87 | Volume: 1279339 (avg 1823800) | Market Cap: 494.22B
```

## Contributing

If you would like to contribute, please open an issue discussing the feature, or if it's small, feel free to make a pull request. Note that any changes should have reasonable test coverage.

There is not currently an established style, but a best effort attempt should be made to emulate the Hubot style, or typical CoffeeScript style where Hubot isn't opinionated.

## NPM Module

https://www.npmjs.com/package/hubot-stocks
