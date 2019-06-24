#general tick
scoreboard players add @s vd.grave 1
#sound effects
execute if entity @s[scores={vd.grave=20..25}] if block ~ ~ ~ minecraft:skeleton_skull run playsound minecraft:entity.skeleton.ambient master @a ~ ~ ~ 2 0
execute if entity @s[scores={vd.grave=20..25}] if block ~ ~ ~ minecraft:wither_skeleton_skull run playsound minecraft:entity.wither_skeleton.ambient master @a ~ ~ ~ 2 0
execute if entity @s[scores={vd.grave=20..25}] if block ~ ~ ~ minecraft:zombie_head run playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 2 0
execute if entity @s[scores={vd.grave=20..25}] if block ~ ~ ~ minecraft:dragon_head run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 2 0
execute if entity @s[scores={vd.grave=20..25}] if block ~ ~ ~ minecraft:player_head run playsound minecraft:entity.player.breath master @a ~ ~ ~ 2 0
execute if entity @s[scores={vd.grave=20..25}] if block ~ ~ ~ minecraft:creeper_head run playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 0
execute if entity @s[scores={vd.grave=1..170}] run playsound minecraft:ambient.underwater.loop.additions.ultra_rare ambient @s ~ ~ ~ 0.5 0.8
execute if entity @s[scores={vd.grave=100}] run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 2 0
execute if entity @s[scores={vd.grave=300}] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 0
#potion effects
execute if entity @s[scores={vd.grave=100..}] run effect give @s minecraft:nausea 5 0 true
execute if entity @s[scores={vd.grave=40..}] run effect give @s minecraft:slowness 1 2 true
execute if entity @s[scores={vd.grave=60}] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[scores={vd.grave=110}] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[scores={vd.grave=150}] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[scores={vd.grave=180}] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[scores={vd.grave=200}] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[scores={vd.grave=205}] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[scores={vd.grave=210}] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[scores={vd.grave=205}] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[scores={vd.grave=208}] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[scores={vd.grave=209}] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[scores={vd.grave=210..}] run effect give @s minecraft:blindness 5 0 true
#functional effects
execute if entity @s[scores={vd.grave=325}] run function voiddimension:rift/enter
execute if entity @s[scores={vd.grave=300}] run summon lightning_bolt ~ ~300 ~
execute if entity @s[scores={vd.grave=300}] run stopsound @a[distance=..64] weather minecraft:entity.lightning_bolt.thunder
execute if block ~ ~ ~ minecraft:skeleton_skull at @s[scores={vd.grave=220}] run summon minecraft:skeleton ^1 ^ ^2 {Tags:["vd.grave.temp"],NoAI:1b,DeathLootTable:"voiddimension:entities/nothing",Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}
execute if block ~ ~ ~ minecraft:skeleton_skull at @s[scores={vd.grave=220}] run summon minecraft:skeleton ^-1 ^ ^2 {Tags:["vd.grave.temp"],NoAI:1b,DeathLootTable:"voiddimension:entities/nothing",Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}
execute if block ~ ~ ~ minecraft:wither_skeleton_skull at @s[scores={vd.grave=220}] run summon minecraft:wither_skeleton ^1 ^ ^2 {Tags:["vd.grave.temp"],NoAI:1b,DeathLootTable:"voiddimension:entities/nothing",Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}
execute if block ~ ~ ~ minecraft:wither_skeleton_skull at @s[scores={vd.grave=220}] run summon minecraft:wither_skeleton ^-1 ^ ^2 {Tags:["vd.grave.temp"],NoAI:1b,DeathLootTable:"voiddimension:entities/nothing",Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}
execute if block ~ ~ ~ minecraft:zombie_head at @s[scores={vd.grave=220}] run summon minecraft:zombie ^1 ^ ^2 {Tags:["vd.grave.temp"],NoAI:1b,DeathLootTable:"voiddimension:entities/nothing",Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}
execute if block ~ ~ ~ minecraft:zombie_head at @s[scores={vd.grave=220}] run summon minecraft:zombie ^-1 ^ ^2 {Tags:["vd.grave.temp"],NoAI:1b,DeathLootTable:"voiddimension:entities/nothing",Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}
execute if block ~ ~ ~ minecraft:dragon_head at @s[scores={vd.grave=220}] run summon minecraft:enderman ^1 ^ ^2 {Tags:["vd.grave.temp"],NoAI:1b,DeathLootTable:"voiddimension:entities/nothing",Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}
execute if block ~ ~ ~ minecraft:dragon_head at @s[scores={vd.grave=220}] run summon minecraft:enderman ^-1 ^ ^2 {Tags:["vd.grave.temp"],NoAI:1b,DeathLootTable:"voiddimension:entities/nothing",Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}
execute if block ~ ~ ~ minecraft:player_head at @s[scores={vd.grave=220}] run summon minecraft:zombie_villager ^1 ^ ^2 {Tags:["vd.grave.temp"],NoAI:1b,DeathLootTable:"voiddimension:entities/nothing",Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}
execute if block ~ ~ ~ minecraft:player_head at @s[scores={vd.grave=220}] run summon minecraft:zombie_villager ^-1 ^ ^2 {Tags:["vd.grave.temp"],NoAI:1b,DeathLootTable:"voiddimension:entities/nothing",Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}
execute if block ~ ~ ~ minecraft:creeper_head at @s[scores={vd.grave=220}] run summon minecraft:creeper ^1 ^ ^2 {Tags:["vd.grave.temp"],NoAI:1b,DeathLootTable:"voiddimension:entities/nothing",Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}
execute if block ~ ~ ~ minecraft:creeper_head at @s[scores={vd.grave=220}] run summon minecraft:creeper ^-1 ^ ^2 {Tags:["vd.grave.temp"],NoAI:1b,DeathLootTable:"voiddimension:entities/nothing",Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F]}
execute if entity @s[scores={vd.grave=225}] as @e[tag=vd.grave.temp,sort=nearest,limit=2,distance=..4] at @s run tp @s ~ ~ ~ facing entity @p[scores={vd.grave=225..}]
execute if entity @s[scores={vd.grave=310}] run tp @e[tag=vd.grave.temp,sort=nearest,limit=2,distance=..4] ~ 0 ~
##particle effects
#explode
execute at @s[scores={vd.grave=300..}] run particle large_smoke ~ ~1 ~ 0.25 0.5 0.25 0.025 30 force
#skull particles
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ #voiddimension:skulls_no-dragon[rotation=0] run particle minecraft:end_rod ~-0.125 ~-0.225 ~-0.3 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ #voiddimension:skulls_no-dragon[rotation=0] run particle minecraft:end_rod ~0.125 ~-0.225 ~-0.3 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ #voiddimension:skulls[rotation=4] run particle minecraft:end_rod ~0.3 ~-0.225 ~0.125 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ #voiddimension:skulls[rotation=4] run particle minecraft:end_rod ~0.3 ~-0.225 ~-0.125 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ #voiddimension:skulls[rotation=8] run particle minecraft:end_rod ~-0.125 ~-0.225 ~0.3 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ #voiddimension:skulls[rotation=8] run particle minecraft:end_rod ~0.125 ~-0.225 ~0.3 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ #voiddimension:skulls[rotation=12] run particle minecraft:end_rod ~-0.3 ~-0.225 ~0.125 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ #voiddimension:skulls[rotation=12] run particle minecraft:end_rod ~-0.3 ~-0.225 ~-0.125 0 0 0 0 1 force
#dragon particles
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ minecraft:dragon_head[rotation=0] run particle minecraft:end_rod ~-0.2 ~0.05 ~-0.5 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ minecraft:dragon_head[rotation=0] run particle minecraft:end_rod ~0.2 ~0.05 ~-0.5 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ minecraft:dragon_head[rotation=0] run particle minecraft:dragon_breath ~ ~-0.375 ~-0.9 0 0 0.075 0.004 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ minecraft:dragon_head[rotation=4] run particle minecraft:end_rod ~0.5 ~0.05 ~-0.2 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ minecraft:dragon_head[rotation=4] run particle minecraft:end_rod ~0.5 ~0.05 ~0.2 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ minecraft:dragon_head[rotation=4] run particle minecraft:dragon_breath ~0.9 ~-0.375 ~ 0 0 0.075 0.004 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ minecraft:dragon_head[rotation=8] run particle minecraft:end_rod ~-0.2 ~0.05 ~0.5 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ minecraft:dragon_head[rotation=8] run particle minecraft:end_rod ~0.2 ~0.05 ~0.5 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ minecraft:dragon_head[rotation=8] run particle minecraft:dragon_breath ~ ~-0.375 ~0.9 0 0 0.075 0.004 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ minecraft:dragon_head[rotation=12] run particle minecraft:end_rod ~-0.5 ~0.05 ~-0.2 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ minecraft:dragon_head[rotation=12] run particle minecraft:end_rod ~-0.5 ~0.05 ~0.2 0 0 0 0 1 force
execute if entity @s[scores={vd.grave=30..}] if block ~ ~ ~ minecraft:dragon_head[rotation=12] run particle minecraft:dragon_breath ~-0.9 ~-0.375 ~ 0 0 0.075 0.004 1 force
