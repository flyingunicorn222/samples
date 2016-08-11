plnx = require 'plnx'

plnx.returnTicker {}, ( error, data ) ->

        # print all markets at once
        # console.log data
        
        # print only ethereum market
        console.log data.BTC_ETH