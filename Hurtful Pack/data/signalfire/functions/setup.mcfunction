scoreboard objectives add sf.signalfire dummy
scoreboard objectives add sf.counter dummy
execute unless score $duration$ sf.counter matches 1.. run scoreboard players set $duration$ sf.counter 3500
