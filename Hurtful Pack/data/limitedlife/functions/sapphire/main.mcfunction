#call limitedlife:sapphire/helmet
execute as @a[tag=sp.sapphireglass,nbt=!{Inventory:[{Slot:103b,id:"minecraft:light_blue_stained_glass",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] run function limitedlife:sapphire/helmet

#add sp.sapphireglass if its worn
tag @a[tag=!sp.sapphireglass,nbt={Inventory:[{Slot:103b,id:"minecraft:light_blue_stained_glass",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] add sp.sapphireglass

#remove sp.sapphireglass if died
replaceitem entity @a[scores={sp.sincedeath=..50},tag=sp.sapphireglass] armor.head minecraft:air 1
tag @a[scores={sp.sincedeath=..50},tag=sp.sapphireglass] remove sp.sapphireglass

#calls placement and effects, also particles
scoreboard players add _global_ sp.glass_placed 1
execute as @e[tag=sp.sapphire_glass] at @s run function limitedlife:sapphire/sapphire_glass/effects
execute as @e[type=minecraft:item,tag=sp.spawnsquid] at @s run function limitedlife:sapphire/sapphire_glass/placement
execute if score _global_ sp.glass_placed >= 10 sp.glass_placed run scoreboard players set _global_ sp.glass_placed 0

#tag @a selecting sapphire_glass with sp.sapphireglass for (sp)ll.cured
execute as @a[tag=!sp.sapphireglass,nbt={Inventory:[{Slot:-106b,id:"minecraft:light_blue_stained_glass",tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] at @s run function limitedlife:sapphire/sapphire_glass/sapphireglass

####placement-API for the sapphire_glass
#calling effects if item is selected
execute as @a[tag=sp.glass_block] at @s run function limitedlife:sapphire/sapphire_glassblock/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:light_blue_stained_glass",tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}}] add sp.glass_block
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:light_blue_stained_glass",tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:light_blue_stained_glass"}}] run tag @s add sp.glass_block
scoreboard players reset @a[tag=!sp.glass_block] sp.glass_placed
#fallback mechanic: returns lost items if the API failed
execute as @a[scores={sp.sg.pa.fail=1..}] at @s run function limitedlife:sapphire/sapphire_glassblock/fallback
