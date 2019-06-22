#firework rocket with crossbows
execute if entity @p[distance=..3,tag=wt.P.shinigami_wing,scores={wt.shootc=1..}] run tag @s add wt.shinigami_rocket
#boost
scoreboard players add @s wt.shinigami 1
execute if entity @s[scores={wt.shinigami=..5}] run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.5 8 force
execute if entity @s[scores={wt.shinigami=..5}] run playsound minecraft:entity.vex.ambient ambient @a ~ ~ ~ 1 2
execute if entity @s[scores={wt.shinigami=..5}] run stopsound @a[distance=..42] ambient minecraft:entity.firework_rocket.launch
#Righclick on block
execute if entity @s[scores={wt.shinigami=..5},tag=!wt.shinigami_rocket] as @p[scores={wt.shinigamipw=1..},tag=wt.P.shinigami_wing] run summon minecraft:area_effect_cloud ~ ~0.65 ~ {ReapplicationDelay:40,Effects:[{Id:9b,Amplifier:0b,Duration:100,ShowParticles:1b},{Id:15b,Amplifier:0b,Duration:75,ShowParticles:1b}],Radius:0.5f,Duration:300,RadiusPerTick:0.1f,Particle:"minecraft:large_smoke"}
execute if entity @s[scores={wt.shinigami=5..},tag=!wt.shinigami_rocket] run kill @s
