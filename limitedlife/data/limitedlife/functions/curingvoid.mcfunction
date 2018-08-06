scoreboard players remove @s ll.deaths 1
tag @s add ll.cured
execute at @e[scores={ll.cookingapple=3000},type=minecraft:item,tag=ll.heal,limit=1] at @e[tag=ll.bat,limit=1,sort=nearest,type=minecraft:bat] run tp @s ~ ~ ~
effect give @s minecraft:resistance 10 255 true
effect give @s minecraft:glowing 10 0 true
