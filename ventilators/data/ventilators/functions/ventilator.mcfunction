#effects and motion based on direction
scoreboard players add @s v.ventilator 1
execute as @s[tag=v.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/south
execute as @s[tag=v.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/west
execute as @s[tag=v.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/north
execute as @s[tag=v.faneast] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/east

execute as @s[tag=v.fanup] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/up
execute as @s[tag=v.fandown] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/down
scoreboard players set @s[scores={v.ventilator=9..}] v.ventilator 0

#kill v.fan armor_stands
execute unless block ~ ~ ~ minecraft:observer run function ventilators:ventilatorcleanup
