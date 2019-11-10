#global counter exceeds individual score -> reset
playsound minecraft:block.conduit.activate ambient @a ~ ~ ~ 2 2
tag @s remove ll.tired
scoreboard players reset @s ll.cooking
