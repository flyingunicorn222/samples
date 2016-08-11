plnx = require 'plnx'

plnx.returnTicker {}, ( error, data ) ->

	console.log data.BTC_ETH
