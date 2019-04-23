#receiving effects
playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 2 2
execute as @s[nbt={SelectedItem:{id:"minecraft:feather",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}] positioned ^ ^ ^0.75 run particle minecraft:dust 0.7098 0.25098 0.25098 1 ~ ~1.3 ~ 0.025 0.025 0.025 1 5 normal
#reset the score
scoreboard players reset @s[scores={mc.itemrotation=0..}] mc.itemrotation
