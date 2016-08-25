plnx = require 'plnx'

params = {}

plnx.returnTicker params, ( error, data ) ->

  # print all markets at once
  # console.log data
  
  # print only ethereum market
  console.log data.BTC_ETH