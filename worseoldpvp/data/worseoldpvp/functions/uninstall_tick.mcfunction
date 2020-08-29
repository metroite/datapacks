#normalize attack_speed
execute as @a run attribute @s minecraft:generic.attack_speed modifier remove 3f6efeb5-899c-4d37-ad37-dbb766b7325a
#normalize axes
execute as @a run attribute @s minecraft:generic.attack_damage modifier remove c0c4f96f-04d1-4b47-ae9f-e58647546be0
#remove carrot_on_a_stick
clear @a minecraft:carrot_on_a_stick{wopcarrot:1b}
#pigs should get their AI back
execute as @e[type=minecraft:pig,tag=wop.noai] at @s run function worseoldpvp:pigs/ai
