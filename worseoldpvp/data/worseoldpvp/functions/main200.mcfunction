#re-schedule
schedule function worseoldpvp:main200 200t
#sets mode of all players not in a mode to default $mode$ (has to be seperated)
execute as @a unless score @s wop.mode matches -1..2 run scoreboard players operation @s wop.mode = $mode$ wop.mode
#pigs score handling (because of carrot_on_a_stick as right click detector)
execute unless entity @e[type=minecraft:pig,tag=wop.noai] run scoreboard players reset * wop.damage
