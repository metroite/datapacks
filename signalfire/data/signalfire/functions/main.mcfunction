#detect blocks
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:jungle_leaves"}}] at @s unless entity @e[tag=sf.signalfire,distance=..86] if block ~ ~ ~ minecraft:fire if block ~ ~-1 ~ #minecraft:logs run summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:0b,Tags:["sf.signalfire"],Invisible:1b}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_leaves"}}] at @s unless entity @e[tag=sf.signalfire,distance=..86] if block ~ ~ ~ minecraft:fire if block ~ ~-1 ~ #minecraft:logs run summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:0b,Tags:["sf.signalfire"],Invisible:1b}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:spruce_leaves"}}] at @s unless entity @e[tag=sf.signalfire,distance=..86] if block ~ ~ ~ minecraft:fire if block ~ ~-1 ~ #minecraft:logs run summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:0b,Tags:["sf.signalfire"],Invisible:1b}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:birch_leaves"}}] at @s unless entity @e[tag=sf.signalfire,distance=..86] if block ~ ~ ~ minecraft:fire if block ~ ~-1 ~ #minecraft:logs run summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:0b,Tags:["sf.signalfire"],Invisible:1b}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:acacia_leaves"}}] at @s unless entity @e[tag=sf.signalfire,distance=..86] if block ~ ~ ~ minecraft:fire if block ~ ~-1 ~ #minecraft:logs run summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:0b,Tags:["sf.signalfire"],Invisible:1b}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dark_oak_leaves"}}] at @s unless entity @e[tag=sf.signalfire,distance=..86] if block ~ ~ ~ minecraft:fire if block ~ ~-1 ~ #minecraft:logs run summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:0b,Tags:["sf.signalfire"],Invisible:1b}

#calling smoke_signal for effects - replacing armor_stands with area_effect clouds could increase performance
execute as @e[type=minecraft:armor_stand,tag=sf.signalfire] at @s run function signalfire:smoke_signal
