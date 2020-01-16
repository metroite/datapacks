#general particle effect
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.25 0.25 0.25 2 20
#obsidian-like only will be destroyed if the closeby player is using a diamond_pickaxe
execute if entity @p[distance=..8,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={sp.glass_broken=1..}] run function sapphire:sapphire_glass/block/cleanup/success
#for creative mode
execute at @p[distance=..8] if entity @p[distance=..1,gamemode=creative] at @s run function sapphire:sapphire_glass/block/cleanup/success
#if not using diamond_pickaxe
execute unless entity @a[distance=..8,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={sp.glass_broken=1..}] run function sapphire:sapphire_glass/block/cleanup/fail
#kill for sapphire_glass/placing
execute if block ~ ~ ~ minecraft:glass run kill @s
