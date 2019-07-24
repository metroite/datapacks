#increment $global$ score
scoreboard players add $global$ sf.counter 1
#detect blocks
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:jungle_leaves"}}] at @s unless entity @e[tag=sf.signalfire,distance=..200] if block ~ ~ ~ minecraft:campfire[lit=true] run function signalfire:campfire/summon
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_leaves"}}] at @s unless entity @e[tag=sf.signalfire,distance=..200] if block ~ ~ ~ minecraft:campfire[lit=true] run function signalfire:campfire/summon
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:spruce_leaves"}}] at @s unless entity @e[tag=sf.signalfire,distance=..200] if block ~ ~ ~ minecraft:campfire[lit=true] run function signalfire:campfire/summon
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:birch_leaves"}}] at @s unless entity @e[tag=sf.signalfire,distance=..200] if block ~ ~ ~ minecraft:campfire[lit=true] run function signalfire:campfire/summon
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:acacia_leaves"}}] at @s unless entity @e[tag=sf.signalfire,distance=..200] if block ~ ~ ~ minecraft:campfire[lit=true] run function signalfire:campfire/summon
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dark_oak_leaves"}}] at @s unless entity @e[tag=sf.signalfire,distance=..200] if block ~ ~ ~ minecraft:campfire[lit=true] run function signalfire:campfire/summon
#calling smoke_signal for effects
execute as @e[type=minecraft:armor_stand,tag=sf.signalfire] at @s run function signalfire:campfire/smoke_signal
