execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:jungle_leaves"}}] at @s unless entity @e[tag=signalfire,distance=..86] if block ~ ~ ~ minecraft:fire if block ~ ~-1 ~ #minecraft:logs run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:0b,Tags:["signalfire"],Invisible:1b}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_leaves"}}] at @s unless entity @e[tag=signalfire,distance=..86] if block ~ ~ ~ minecraft:fire if block ~ ~-1 ~ #minecraft:logs run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:0b,Tags:["signalfire"],Invisible:1b}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:spruce_leaves"}}] at @s unless entity @e[tag=signalfire,distance=..86] if block ~ ~ ~ minecraft:fire if block ~ ~-1 ~ #minecraft:logs run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:0b,Tags:["signalfire"],Invisible:1b}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:birch_leaves"}}] at @s unless entity @e[tag=signalfire,distance=..86] if block ~ ~ ~ minecraft:fire if block ~ ~-1 ~ #minecraft:logs run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:0b,Tags:["signalfire"],Invisible:1b}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:acacia_leaves"}}] at @s unless entity @e[tag=signalfire,distance=..86] if block ~ ~ ~ minecraft:fire if block ~ ~-1 ~ #minecraft:logs run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:0b,Tags:["signalfire"],Invisible:1b}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dark_oak_leaves"}}] at @s unless entity @e[tag=signalfire,distance=..86] if block ~ ~ ~ minecraft:fire if block ~ ~-1 ~ #minecraft:logs run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:0b,Tags:["signalfire"],Invisible:1b}

execute as @e[type=minecraft:armor_stand,tag=signalfire] at @s run data merge entity @s {Motion:[0.0d,0.32d,0.0d]}
scoreboard players add @e[type=minecraft:armor_stand,tag=signalfire] signalfire 1
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=0..5}] run playsound minecraft:block.fire.extinguish player @a[distance=..32] ~ ~ ~ 2 0.5
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=0..20}] run particle minecraft:large_smoke ~ ~ ~ 0.1 0.2 0.1 0.05 10 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=21..40}] run particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0.06 12 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=41..60}] run particle minecraft:large_smoke ~ ~ ~ 0.3 0.2 0.3 0.07 14 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=61..80}] run particle minecraft:large_smoke ~ ~ ~ 0.4 0.2 0.4 0.08 16 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=81..100}] run particle minecraft:large_smoke ~ ~ ~ 0.5 0.2 0.5 0.09 18 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=101..120}] run particle minecraft:large_smoke ~ ~ ~ 0.6 0.2 0.6 0.1 20 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=121..140}] run particle minecraft:large_smoke ~ ~ ~ 0.7 0.2 0.7 0.11 22 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=141..160}] run particle minecraft:large_smoke ~ ~ ~ 0.8 0.2 0.8 0.12 24 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=161..180}] run particle minecraft:large_smoke ~ ~ ~ 0.9 0.2 0.9 0.13 26 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=181..200}] run particle minecraft:large_smoke ~ ~ ~ 0.95 0.2 0.95 0.14 28 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=201..220}] run particle minecraft:large_smoke ~ ~ ~ 1 0.2 1 0.15 30 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=221..240}] run particle minecraft:large_smoke ~ ~ ~ 1.05 0.2 1.05 0.16 32 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=241..260}] run particle minecraft:large_smoke ~ ~ ~ 1.1 0.2 1.1 0.17 34 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=261..280}] run particle minecraft:large_smoke ~ ~ ~ 1.15 0.2 1.15 0.18 36 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=281..300}] run particle minecraft:large_smoke ~ ~ ~ 1.2 0.2 1.2 0.19 38 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=301..320}] run particle minecraft:large_smoke ~ ~ ~ 1.25 0.2 1.25 0.16 15 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=301..320}] run particle minecraft:smoke ~ ~ ~ 1.25 0.2 1.25 0.16 15 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=321..340}] run particle minecraft:large_smoke ~ ~ ~ 1.3 0.2 1.3 0.13 8 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=321..340}] run particle minecraft:smoke ~ ~ ~ 1.3 0.2 1.3 0.13 14 force
execute at @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=341..360}] run particle minecraft:smoke ~ ~ ~ 1.35 0.2 1.35 0.1 16 force

data merge entity @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=260},limit=1] {NoGravity:1b}
kill @e[type=minecraft:armor_stand,tag=signalfire,scores={signalfire=360..}]
