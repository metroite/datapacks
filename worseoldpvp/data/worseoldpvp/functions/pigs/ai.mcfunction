###called by main.mcfunction, implements own ai and conditions to regain pig ai
#no riding
effect give @s[nbt={NoAI:1b}] minecraft:slowness 1 255 true
#regain ai
execute unless entity @p[distance=..11,nbt={SelectedItem:{tag:{wopsword:1b}}}] run data merge entity @s {NoAI:0b}
execute unless entity @p[distance=..11,nbt={SelectedItem:{tag:{wopsword:1b}}}] run tag @s remove wop.noai
#gravity
execute if entity @s[nbt={NoAI:1b}] if block ~ ~-0.25 ~ #worseoldpvp:no_collision_ender_pearl if block ~0.2 ~-0.25 ~0.2 #worseoldpvp:no_collision_ender_pearl if block ~-0.2 ~-0.25 ~-0.2 #worseoldpvp:no_collision_ender_pearl if block ~0.2 ~-0.25 ~-0.2 #worseoldpvp:no_collision_ender_pearl if block ~-0.2 ~-0.25 ~0.2 #worseoldpvp:no_collision_ender_pearl run tp @s ~ ~-0.24 ~
#if hit regain ai
execute store result score @s wop.damage run data get entity @s HurtTime
execute if entity @s[scores={wop.damage=1..}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={wop.damage=1..}] run effect clear @s minecraft:slowness
execute if entity @s[scores={wop.damage=1..}] run effect give @s nausea 9 116 true
execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:116b,Duration:1,ShowParticles:0b}]}] run data merge entity @s {NoAI:1b}
#remove from scoreboard
execute unless entity @p[distance=..11,nbt={SelectedItem:{tag:{wopsword:1b}}}] run scoreboard players reset @s wop.damage
