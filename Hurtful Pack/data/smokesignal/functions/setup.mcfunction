schedule function smokesignal:main100 85t
#scoreboard
scoreboard objectives add ss.smokesignal dummy
scoreboard objectives add ss.counter dummy
execute unless score $duration$ ss.counter matches 1.. run scoreboard players set $duration$ ss.counter 35
