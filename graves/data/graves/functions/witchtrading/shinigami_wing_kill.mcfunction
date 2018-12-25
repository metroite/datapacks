#effects
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.5 100 force
playsound minecraft:entity.witch.ambient voice @s ~ ~ ~ 2 2
playsound minecraft:entity.witch.ambient voice @s ~ ~ ~ 2 2
playsound minecraft:entity.witch.ambient voice @s ~ ~ ~ 2 2
#end loop
tag @s[scores={wt.rng=1}] remove wt.P.shinigami_wing
tag @s[scores={wt.rng=1}] remove wt.P.shinigami_wing.SU
#kill
kill @s[scores={wt.rng=1}]
