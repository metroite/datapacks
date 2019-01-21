#call limitedlife:sapphire/helmet
execute as @a[tag=sp.sapphireglass,nbt=!{Inventory:[{Slot:103b,id:"minecraft:light_blue_stained_glass",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] run function limitedlife:sapphire/helmet

#add sp.sapphireglass if its worn
tag @a[tag=!sp.sapphireglass,nbt={Inventory:[{Slot:103b,id:"minecraft:light_blue_stained_glass",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] add sp.sapphireglass

#remove sp.sapphireglass if died
replaceitem entity @a[scores={sp.sincedeath=..50},tag=sp.sapphireglass] armor.head minecraft:air 1
tag @a[scores={sp.sincedeath=..50},tag=sp.sapphireglass] remove sp.sapphireglass

#calls placement and effect, also particles
execute as @e[tag=sp.sapphire_glass] at @s run function limitedlife:sapphire/sapphire_glass/effects
execute as @e[tag=sp.spawnsquid,tag=sp.valid] at @s run function limitedlife:sapphire/sapphire_glass/placement

#tag @a selecting sapphire_glass with sp.sapphireglass
execute as @a[tag=!sp.sapphireglass,nbt={Inventory:[{Slot:-106b,id:"minecraft:light_blue_stained_glass",tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] at @s run function limitedlife:sapphire/sapphire_glass/sapphireglass

####placement-API for the sapphire_glass
tag @a[nbt={SelectedItem:{id:"minecraft:light_blue_stained_glass",tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}}] add sp.glass_block
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:light_blue_stained_glass",tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] add sp.glass_block
scoreboard players reset @a[tag=!sp.glass_block] sp.glass_placed
execute as @a[tag=sp.glass_block] at @s run function limitedlife:sapphire/sapphire_glassblock/effects
#calling sad_orchid:placement
execute as @e[tag=sp.R.glass] at @s run function limitedlife:sapphire/sapphire_glassblock/placement
