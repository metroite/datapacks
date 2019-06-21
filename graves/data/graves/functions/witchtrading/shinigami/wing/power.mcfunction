execute if entity @p[distance=..3,tag=wt.P.shinigami_wing,scores={wt.shootc=1..}] run tag @s add wt.shinigami_rocket
scoreboard players add @s wt.shinigami 1
execute if entity @s[scores={wt.shinigami=..5}] run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.5 8 force
execute if entity @s[scores={wt.shinigami=..5}] run playsound minecraft:entity.vex.ambient ambient @a ~ ~ ~ 1 2
execute if entity @s[scores={wt.shinigami=..5}] run stopsound @a[distance=..32] ambient minecraft:entity.firework_rocket.launch
execute if entity @s[scores={wt.shinigami=5..},tag=!wt.shinigami_rocket] run kill @s
