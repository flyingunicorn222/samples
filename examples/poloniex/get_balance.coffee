plnx = require 'plnx'

key = require './_key'

params =
  key   : key.key
  secret: key.secret

plnx.returnAvailableAccountBalances params, ( error, data ) ->

  if data.exchange?
    console.log "You have some funds in your exchange account:"

    if data.exchange.BTC
      console.log " - #{data.exchange.BTC} BTC"

  if data.margin?
    console.log "You have some funds in your margin account:"

    if data.margin.BTC
      console.log " - #{data.margin.BTC} BTC"