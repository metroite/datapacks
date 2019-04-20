data merge entity @s {Motion:[0.0d,0.32d,0.0d]}
scoreboard players add @s sf.signalfire 1
execute if entity @s[scores={sf.signalfire=1}] run advancement grant @p[distance=..8] only signalfire:smoke_signal
execute if entity @s[scores={sf.signalfire=0..5}] run playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 2 0.5
execute if entity @s[scores={sf.signalfire=0..20}] run particle minecraft:large_smoke ~ ~ ~ 0.1 0.2 0.1 0.05 10 force
execute if entity @s[scores={sf.signalfire=21..40}] run particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0.06 12 force
execute if entity @s[scores={sf.signalfire=41..60}] run particle minecraft:large_smoke ~ ~ ~ 0.3 0.2 0.3 0.07 14 force
execute if entity @s[scores={sf.signalfire=61..80}] run particle minecraft:large_smoke ~ ~ ~ 0.4 0.2 0.4 0.08 16 force
execute if entity @s[scores={sf.signalfire=81..100}] run particle minecraft:large_smoke ~ ~ ~ 0.5 0.2 0.5 0.09 18 force
execute if entity @s[scores={sf.signalfire=101..120}] run particle minecraft:large_smoke ~ ~ ~ 0.6 0.2 0.6 0.1 20 force
execute if entity @s[scores={sf.signalfire=121..140}] run particle minecraft:large_smoke ~ ~ ~ 0.7 0.2 0.7 0.11 22 force
execute if entity @s[scores={sf.signalfire=141..160}] run particle minecraft:large_smoke ~ ~ ~ 0.8 0.2 0.8 0.12 24 force
execute if entity @s[scores={sf.signalfire=161..180}] run particle minecraft:large_smoke ~ ~ ~ 0.9 0.2 0.9 0.13 26 force
execute if entity @s[scores={sf.signalfire=181..200}] run particle minecraft:large_smoke ~ ~ ~ 0.95 0.2 0.95 0.14 28 force
execute if entity @s[scores={sf.signalfire=201..220}] run particle minecraft:large_smoke ~ ~ ~ 1 0.2 1 0.15 30 force
execute if entity @s[scores={sf.signalfire=221..240}] run particle minecraft:large_smoke ~ ~ ~ 1.05 0.2 1.05 0.16 32 force
execute if entity @s[scores={sf.signalfire=241..260}] run particle minecraft:large_smoke ~ ~ ~ 1.1 0.2 1.1 0.17 34 force
execute if entity @s[scores={sf.signalfire=261..280}] run particle minecraft:large_smoke ~ ~ ~ 1.15 0.2 1.15 0.18 36 force
execute if entity @s[scores={sf.signalfire=281..300}] run particle minecraft:large_smoke ~ ~ ~ 1.2 0.2 1.2 0.19 38 force
execute if entity @s[scores={sf.signalfire=301..320}] run particle minecraft:large_smoke ~ ~ ~ 1.25 0.2 1.25 0.16 15 force
execute if entity @s[scores={sf.signalfire=301..320}] run particle minecraft:smoke ~ ~ ~ 1.25 0.2 1.25 0.16 15 force
execute if entity @s[scores={sf.signalfire=321..600}] run particle minecraft:large_smoke ~ ~ ~ 1.3 0.2 1.3 0.13 8 force
execute if entity @s[scores={sf.signalfire=321..700}] run particle minecraft:smoke ~ ~ ~ 1.3 0.2 1.3 0.13 14 force
execute if entity @s[scores={sf.signalfire=600..}] run particle minecraft:smoke ~ ~ ~ 1.35 0.2 1.35 0.1 16 force
data merge entity @s[scores={sf.signalfire=260}] {NoGravity:1b}

kill @s[scores={sf.signalfire=750..}]
