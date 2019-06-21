#no piston_move: further in effects.mcfunction
tag @s add sp.sg.piston_move
#obsidian-like only will be destroyed if the closeby player is using a diamond_pickaxe
execute if entity @p[distance=..8,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={sp.glass_broken=1..}] run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,distance=..2,nbt=!{Item:{id:"minecraft:light_blue_stained_glass",Count:1b,tag:{}}},nbt={Item:{id:"minecraft:light_blue_stained_glass",Count:1b}}] {Item:{id:"minecraft:light_blue_stained_glass",Count:1b,tag:{display:{Name:"{\"text\":\"Sapphire Glass\",\"color\":\"aqua\",\"italic\":false}"},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse",AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUIDLeast:897636,UUIDMost:510691,Slot:"head"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:2,Operation:0,UUIDLeast:584132,UUIDMost:458804,Slot:"head"}]}]}}}
execute if entity @p[distance=..8,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={sp.glass_broken=1..}] run execute unless entity @e[tag=metroite.placement,distance=..2] run playsound minecraft:block.anvil.use block @a ~ ~ ~ 0.65 2
execute if entity @p[distance=..8,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={sp.glass_broken=1..}] run particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.4 0.4 0.4 2 24
execute if entity @p[distance=..8,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={sp.glass_broken=1..}] run kill @s
#general particle effect
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.25 0.25 0.25 2 2
#for creative mode
execute at @p[distance=..8] if entity @p[distance=..1,gamemode=creative] at @s run playsound minecraft:block.anvil.use block @a ~ ~ ~ 0.65 2
execute at @p[distance=..8] if entity @p[distance=..1,gamemode=creative] at @s run particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.25 0.25 0.25 2 12
execute at @p[distance=..8] if entity @p[distance=..1,gamemode=creative] at @s run kill @s
#if not using diamond_pickaxe
execute unless entity @a[distance=..8,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={sp.glass_broken=1..}] at @p[distance=..8] unless entity @p[distance=..1,gamemode=creative] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:light_blue_stained_glass replace air
execute unless entity @a[distance=..8,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={sp.glass_broken=1..}] at @p[distance=..8] unless entity @p[distance=..1,gamemode=creative] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:light_blue_stained_glass replace piston_head
execute unless entity @a[distance=..8,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={sp.glass_broken=1..}] at @p[distance=..8] unless entity @p[distance=..1,gamemode=creative] at @s positioned ~ ~0.5 ~ run kill @e[type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:light_blue_stained_glass",tag:{}}},nbt={Item:{id:"minecraft:light_blue_stained_glass",Count:1b}},distance=..2]
execute unless entity @a[distance=..8,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={sp.glass_broken=1..}] at @p[distance=..8] unless entity @p[distance=..1,gamemode=creative] at @s positioned ~ ~0.5 ~ run playsound minecraft:ui.toast.in block @a ~ ~ ~ 2 2
#kill for sapphire_glass/placing
execute if block ~ ~ ~ minecraft:glass run kill @s
