execute if entity @p[tag=wt.P.shinigami_wing,distance=..0.75] run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.5 8 force
execute if entity @p[tag=wt.P.shinigami_wing,distance=..0.75] run playsound minecraft:entity.vex.ambient ambient @a ~ ~ ~ 1 2
execute if entity @p[tag=wt.P.shinigami_wing,distance=..0.75] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["wt.T.shinigami_power"]}
stopsound @a[distance=..32] ambient minecraft:entity.firework_rocket.launch
execute unless entity @e[tag=wt.T.shinigami_power,distance=..0.75] run kill @s
