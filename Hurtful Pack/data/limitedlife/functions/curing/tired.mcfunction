scoreboard players add @s ll.cooking 1
execute if score @s ll.cooking matches 100.. run playsound minecraft:ambient.underwater.exit ambient @a ~ ~ ~ 2 0.5
tag @s[scores={ll.cooking=100..}] remove ll.tired
scoreboard players reset @s[scores={ll.cooking=100..}] ll.cooking
