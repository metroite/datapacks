tag @s add ue.calculated
execute as @a if score @s ue.uuid = @e[tag=ue.calculated,limit=1] ue.uuid run effect give @s minecraft:resistance 1 4 true
