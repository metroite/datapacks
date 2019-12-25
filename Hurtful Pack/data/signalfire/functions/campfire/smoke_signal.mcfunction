data merge entity @s {Motion:[0.0d,0.25d,0.0d]}
scoreboard players add @s sf.signalfire 1
execute if entity @s[scores={sf.signalfire=1}] run advancement grant @p[distance=..8] only signalfire:smoke_signal
execute if entity @s[scores={sf.signalfire=0..5}] run playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 2 0.5
#particle
execute if entity @s[scores={sf.signalfire=1..120}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0.2 0.1 0.01 2 force
execute if entity @s[scores={sf.signalfire=120..240}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.3 0.2 0.3 0.01 3 force
execute if entity @s[scores={sf.signalfire=240..360}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.2 1 1.2 0.01 4 force
execute if entity @s[scores={sf.signalfire=360..480}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.8 1 1.8 0.01 5 force
execute if entity @s[scores={sf.signalfire=480..600}] run particle minecraft:campfire_signal_smoke ~ ~ ~ 3.6 3 3.6 0.01 5 force
#late
execute if entity @s[scores={sf.signalfire=600..}] run particle minecraft:campfire_cosy_smoke ~ ~-130 ~ 0.1 7 0.1 0.01 1 force
execute if entity @s[scores={sf.signalfire=600..}] run particle minecraft:campfire_cosy_smoke ~ ~-110 ~ 0.3 7 0.3 0.01 2 force
execute if entity @s[scores={sf.signalfire=600..}] run particle minecraft:campfire_cosy_smoke ~ ~-83 ~ 1.2 7 1.2 0.01 2 force
execute if entity @s[scores={sf.signalfire=600..}] run particle minecraft:campfire_cosy_smoke ~ ~-56 ~ 1.8 7 1.8 0.01 3 force
execute if entity @s[scores={sf.signalfire=600..}] run particle minecraft:campfire_signal_smoke ~ ~-27 ~ 3.6 7 3.6 0.01 3 force
#early
execute if entity @s[scores={sf.signalfire=400..600}] run particle minecraft:campfire_cosy_smoke ~ ~-60 ~ 1.2 7 1.2 0.01 2 force
execute if entity @s[scores={sf.signalfire=200..600}] run particle minecraft:campfire_cosy_smoke ~ ~-30 ~ 1.2 7 1.2 0.01 2 force
execute if entity @s[scores={sf.signalfire=500..600}] run particle minecraft:campfire_cosy_smoke ~ ~-100 ~ 0.1 7 0.1 0.01 1 force
execute if entity @s[scores={sf.signalfire=400..500}] run particle minecraft:campfire_cosy_smoke ~ ~-80 ~ 0.1 7 0.1 0.01 1 force
execute if entity @s[scores={sf.signalfire=300..400}] run particle minecraft:campfire_cosy_smoke ~ ~-60 ~ 0.1 7 0.1 0.01 1 force
execute if entity @s[scores={sf.signalfire=200..300}] run particle minecraft:campfire_cosy_smoke ~ ~-40 ~ 0.1 7 0.1 0.01 1 force
execute if entity @s[scores={sf.signalfire=100..200}] run particle minecraft:campfire_signal_smoke ~ ~-20 ~ 0.1 7 0.1 0.01 1 force

execute if entity @s[scores={sf.signalfire=642..2700}] run particle minecraft:campfire_signal_smoke ~ ~ ~ 25 4 25 0.01 1 force
execute if entity @s[scores={sf.signalfire=2400..}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 8 5 8 0.01 4 force

#end
data merge entity @s[scores={sf.signalfire=600}] {NoGravity:1b}
execute if score @s sf.counter <= $global$ sf.counter run kill @s
