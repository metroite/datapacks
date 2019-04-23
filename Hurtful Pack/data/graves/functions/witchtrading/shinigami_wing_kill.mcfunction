#effects
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.5 50 force
playsound minecraft:entity.vex.death voice @a[distance=..16] ~ ~ ~ 2 1.2
playsound minecraft:entity.vex.hurt voice @a[distance=..16] ~ ~ ~ 2 1.2
#end loop
execute if entity @p[scores={wt.rng=1}] run playsound minecraft:entity.vex.charge voice @a[distance=..16] ~ ~ ~ 2 1.2
execute if entity @p[scores={wt.rng=1}] run playsound minecraft:entity.vex.charge voice @a[distance=..16] ~ ~ ~ 2 1.2
execute if entity @p[scores={wt.rng=1}] run playsound minecraft:entity.vex.charge voice @a[distance=..16] ~ ~ ~ 2 1.2
execute if entity @p[scores={wt.rng=1}] run tag @s remove wt.P.shinigami_wing
execute if entity @p[scores={wt.rng=1}] run tag @s remove wt.P.shinigami_wing.SU
#kill
replaceitem entity @s[scores={wt.rng=1}] armor.chest air 1
execute if entity @p[scores={wt.rng=1}] run kill @s
execute if entity @p[scores={wt.rng=1}] run effect give @a[distance=..6] minecraft:wither 2 4 false
