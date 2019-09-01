#reset score
scoreboard players reset @s ha.armorcount
#count
scoreboard players add @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] ha.armorcount 2
scoreboard players add @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] ha.armorcount 5
scoreboard players add @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] ha.armorcount 3
scoreboard players add @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] ha.armorcount 1

scoreboard players add @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}] ha.armorcount 18
scoreboard players add @s[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] ha.armorcount 12
scoreboard players add @s[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] ha.armorcount 4

scoreboard players add @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] ha.armorcount 36
scoreboard players add @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] ha.armorcount 24
scoreboard players add @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] ha.armorcount 8

scoreboard players add @s[nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] ha.armorcount 27
scoreboard players add @s[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] ha.armorcount 18
scoreboard players add @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] ha.armorcount 6

scoreboard players add @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] ha.armorcount 9

scoreboard players remove @s[nbt={Inventory:[{Slot:103b,id:"minecraft:light_blue_stained_glass"}]}] ha.armorcount 10
#rune effects
execute as @a run function heavyarmor:armor/slowness
