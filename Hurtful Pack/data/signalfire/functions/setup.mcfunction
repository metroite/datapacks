scoreboard objectives add sf.signalfire dummy
scoreboard objectives add sf.counter dummy
scoreboard players set 0 sf.counter 0
execute unless score $duration$ sf.counter > 0 sf.counter run scoreboard players set $duration$ sf.counter 3500
