###
Simple moving average example
###

talib = require 'ta-lib'

# list contains 3 values
values  = [ 10, 5, 0 ]

# talib will calculate the average of two periods
# note how 2 periods works ok with an array of 3 values
console.log "two periods average:"
console.log talib.SMA( values, 2 )

# asking for average of 3 periods having only 3 periods, returns an
# "incomplete result", kinda weird with 0 as most recent values
console.log "3 periods incomplete:"
console.log talib.SMA( values, 3 )

# asking for an average of 4 periods, would even yield an error.
# that's because we can't really calculate a 4 SMA with only 3 periods
# only have 3 values
# console.log talib.SMA( values, 4 )

###
# This happens because to calculate the average of the first value
# we would need the previous values, so make sure you always
# have extra values, for instance, if you are calculating a 40 periods
# moving average but only interested in the last two averages, you would
# still need around 42 values to calculate the last two properly, does
# that make sense?
###