###called by main.mcfunction, implements own ai and conditions to regain pig ai
#no riding
effect give @s[nbt={NoAI:1b}] minecraft:slowness 1 255 true
#if far regain ai
execute unless entity @a[distance=..11,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] run function worseoldpvp:pigs/ai
#gravity
execute if entity @s[nbt={NoAI:1b}] if block ~ ~-0.25 ~ #worseoldpvp:no_collision_ender_pearl if block ~0.2 ~-0.25 ~0.2 #worseoldpvp:no_collision_ender_pearl if block ~-0.2 ~-0.25 ~-0.2 #worseoldpvp:no_collision_ender_pearl if block ~0.2 ~-0.25 ~-0.2 #worseoldpvp:no_collision_ender_pearl if block ~-0.2 ~-0.25 ~0.2 #worseoldpvp:no_collision_ender_pearl run tp @s ~ ~-0.24 ~
#if hit regain ai
execute store result score @s wop.damage run data get entity @s HurtTime
execute if entity @s[scores={wop.damage=1..}] run function worseoldpvp:pigs/ai_short_regain
execute if entity @s[tag=wop.shortai,nbt=!{ActiveEffects:[{Id:9b,Amplifier:116b,ShowParticles:0b}]}] run function worseoldpvp:pigs/ai_short_remove
