execute if entity @p[distance=..1,tag=wt.P.shinigami_wing] run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.5 8 force
execute if entity @p[distance=..1,tag=wt.P.shinigami_wing] run playsound minecraft:entity.vex.ambient ambient @a ~ ~ ~ 1 2
execute if entity @p[distance=..1,tag=wt.P.shinigami_wing] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["wt.T.shinigami_power"]}
stopsound @a[distance=..32] ambient minecraft:entity.firework_rocket.launch
execute if entity @p[distance=..3,tag=wt.P.shinigami_wing,scores={ll.shootc=1..}] run tag @s add wt.T.shinigami_rocket
execute unless entity @e[distance=..1,tag=wt.T.shinigami_power] run kill @s[tag=!wt.T.shinigami_rocket]
