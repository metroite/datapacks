#effects and motion based on direction
scoreboard players add @s ll.ventilator 1
execute as @s[tag=ll.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/south
execute as @s[tag=ll.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/west
execute as @s[tag=ll.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/north
execute as @s[tag=ll.faneast] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/east

execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/up
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/down
scoreboard players set @s[scores={ll.ventilator=9..}] ll.ventilator 0

#kill ll.fan armor_stands
execute unless block ~ ~ ~ minecraft:observer run function ventilators:ventilatorcleanup
