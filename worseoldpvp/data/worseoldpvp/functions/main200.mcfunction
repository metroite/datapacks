#re-schedule
schedule function worseoldpvp:main200 200t
#sets mode of all players not in a mode to default $mode$ (has to be seperated)
execute as @a unless score @s wop.mode matches -1..2 run scoreboard players operation @s wop.mode = $mode$ wop.mode
execute as @a if score @s wop.mode matches 0..2 run attribute @s minecraft:generic.attack_speed modifier add 3f6efeb5-899c-4d37-ad37-dbb766b7325a "1.8 PvP" 100 multiply
execute as @a if score @s wop.mode matches 1 run attribute @s minecraft:generic.attack_speed modifier remove 3f6efeb5-899c-4d37-ad37-dbb766b7325a
#pigs score handling (because of carrot_on_a_stick as right click detector)
execute unless entity @e[type=minecraft:pig,tag=wop.noai] run scoreboard players reset * wop.damage
