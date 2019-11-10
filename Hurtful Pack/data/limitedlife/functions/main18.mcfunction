#tired crystal particle
execute as @e[tag=ll.tired] at @s run particle minecraft:dripping_water ~ ~1 ~ 0.3 0.3 0.3 1 1 normal

#crafting batwingsuit (Inventory)
execute as @a[scores={ll.craftbatwing=1..}] run function limitedlife:items/batwingsuit_craft
