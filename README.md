# hubot-stocks

Hubot explores the stock market. Currently this script can only retrieve the current quote 
(or at least as current as the Yahoo API offers), but eventually it will have support
for current and historical graphs, searching for stock symbols by names, and anything
else of interest the Yahoo API offers.

See [`src/hubot-stocks.coffee`](src/hubot-stocks.coffee) for full documentation.

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

## NPM Module

https://www.npmjs.com/package/hubot-stocks
