tag @s add ue.calculated
execute as @a if score @s ue.uuid = @e[tag=ue.calculated,limit=1] ue.uuid at @s run function usefulender:ender_pearl/dragon_egg_success
#prevent ender pearl from teleporting player back
kill @s
