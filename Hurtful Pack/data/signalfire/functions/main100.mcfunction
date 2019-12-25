#re-schedule
execute if score $signalfire$ hp.storeboard matches 1.. run schedule function signalfire:main100 100t
#increment $global$ score
scoreboard players add $global$ sf.counter 1
#detect if leaf ontop lit campfire
execute as @e[type=minecraft:item] run function signalfire:campfire/detect_leaf
