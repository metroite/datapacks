tag @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..3] add ue.ea.arrow
clear @s minecraft:ender_pearl 1
execute positioned ~ ~1.2 ~ run particle minecraft:portal ^ ^ ^1 0 0 0 0.5 16
playsound minecraft:entity.ender_pearl.throw ambient @a ~ ~ ~ 0.5 0.5
execute unless entity @s[scores={ue.uuid=1..}] at @s run function usefulender:uuid/define
