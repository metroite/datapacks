#delay calculate as it somehow doesn't work if done directly
execute as @e[type=minecraft:end_crystal,tag=ll.tired] unless entity @s[scores={ll.cooking=-2147483648..}] run function limitedlife:curing/tired/calculate
