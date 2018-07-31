scoreboard players add @a[limit=1,sort=random] ll.deaths 0
scoreboard players remove @a[scores={ll.deaths=10..}] ll.deaths 1

#helmet
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:leather_helmet",Count:1b,tag:{display:{Name:"{\"text\":\"Lebenserhaltungshelm\"}"}}}]}] run function limitedlife:helmet
execute as @a[tag=cured] run function limitedlife:helmet

#curing
execute as @e[type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:golden_apple"}}] at @s if block ~ ~ ~ minecraft:cauldron[level=3] positioned ~ ~1 ~ if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1,tag=!ll.tired] run function limitedlife:curing
#make sure ll.beam entity dies
execute as @e[type=minecraft:armor_stand,tag=ll.beam] at @s unless entity @e[tag=ll.bat,limit=1,sort=nearest,distance=..64] run kill @s
#tired effect
execute at @e[tag=ll.tired] run particle minecraft:dripping_water ~ ~1 ~ 0.3 0.3 0.3 1 1 normal
scoreboard players add @e[tag=ll.tired] ll.cookingapple 1
tag @e[tag=ll.tired,scores={ll.cookingapple=10000..}] remove ll.tired
scoreboard players reset @e[tag=!ll.tired,type=minecraft:end_crystal,scores={ll.cookingapple=1..}] ll.cookingapple
#Bat Wings
data merge entity @e[type=minecraft:bat,nbt=!{DeathLootTable:"limitedlife:entities/bat"},limit=1,sort=random] {DeathLootTable:"limitedlife:entities/bat"}

#enchant and coloing is not really possible without /modifyitem since you can't change the nbt that easily. Will add it later if I won't forget it
#function limitedlife:enchanting
#function limitedlife:coloring
