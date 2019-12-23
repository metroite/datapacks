advancement grant @s only usefulender:ender_arrow
tag @s add ue.ea.shot
execute as @e[type=minecraft:arrow,distance=..3,limit=1,sort=nearest] at @s run function usefulender:enderarrow/arrow_summon
clear @s minecraft:ender_pearl 1
