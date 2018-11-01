clear @s light_blue_stained_glass{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]} 1
tag @s add sp.sapphireglass
playsound minecraft:block.glass.break block @a[distance=..16] ~ ~ ~ 2 2
execute positioned ~ ~1.62 ~ positioned ^ ^ ^0.3 run particle minecraft:block minecraft:glass ~ ~ ~ 0 0 0 1 24 force
