kill @s
execute if entity @p[tag=wt.P.shinigami_wing,distance=..1] run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.5 50 force
execute if entity @p[tag=wt.P.shinigami_wing,distance=..1] run playsound minecraft:entity.vex.ambient player @a ~ ~ ~ 1 2
