#tag @a selecting sapphire_glass in offhand with sp.sapphireglass for (sp)ll.cured
execute as @a[tag=!sp.sapphireglass,nbt={Inventory:[{Slot:-106b,id:"minecraft:light_blue_stained_glass",tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] at @s run function limitedlife:sapphire/glass/init
#functions for players wearing sapphire_glass
execute as @a[tag=sp.sapphireglass] at @s run function limitedlife:sapphire/glass/wearing
