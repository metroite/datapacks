#replace helmet-slot with sapphire_glass
execute as @s[nbt=!{Inventory:[{Slot:103b,id:"minecraft:light_blue_stained_glass",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] run function limitedlife:sapphire/glass/helmet
#remove sp.sapphireglass if died
replaceitem entity @s[scores={sp.sincedeath=..60}] armor.head minecraft:air 1
tag @s[scores={sp.sincedeath=..60}] remove sp.sapphireglass
#particle
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~1.5 ~ 0.125 0.125 0.125 1 1
