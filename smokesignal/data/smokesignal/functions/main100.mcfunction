#re-schedule
schedule function smokesignal:main100 100t
#increment $global$ score
scoreboard players add $global$ ss.counter 1
#detect if leaf ontop lit campfire
execute as @e[type=minecraft:item] run function smokesignal:campfire/detect_leaf
