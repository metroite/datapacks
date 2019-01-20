#effects
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.5 50 force
playsound minecraft:entity.witch.ambient player @a[distance=..16] ~ ~ ~ 2 2
playsound minecraft:entity.witch.ambient player @a[distance=..16] ~ ~ ~ 2 2
playsound minecraft:entity.witch.ambient player @a[distance=..16] ~ ~ ~ 2 2
#end loop
replaceitem entity @s armor.chest air 1
execute if entity @s[scores={wt.rng=1}] run tag @s remove wt.P.shinigami_wing
execute if entity @s[scores={wt.rng=1}] run tag @s remove wt.P.shinigami_wing.SU
#kill
execute if entity @s[scores={wt.rng=1}] run kill @s
execute if entity @s[scores={wt.rng=1}] run effect give @a[distance=..6] minecraft:wither 2 4 false
