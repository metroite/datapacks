#determine block
execute if score $active$ hs.coal matches 1.. as @a[scores={hs.coal=1..}] at @s run function hardstone:blocks/coal/detect
execute if score $active$ hs.cobblestone matches 1.. as @a[scores={hs.cobblestone=1..}] at @s run function hardstone:blocks/cobblestone/detect
execute if score $active$ hs.diamond matches 1.. as @a[scores={hs.diamond=1..}] at @s run function hardstone:blocks/diamond/detect
execute if score $active$ hs.emerald matches 1.. as @a[scores={hs.emerald=1..}] at @s run function hardstone:blocks/emerald/detect
execute if score $active$ hs.gold matches 1.. as @a[scores={hs.gold=1..}] at @s run function hardstone:blocks/gold/detect
execute if score $active$ hs.grassblock matches 1.. as @a[scores={hs.grassblock=1..}] at @s run function hardstone:blocks/grassblock/detect
execute if score $active$ hs.iron matches 1.. as @a[scores={hs.iron=1..}] at @s run function hardstone:blocks/iron/detect
execute if score $active$ hs.lapis matches 1.. as @a[scores={hs.lapis=1..}] at @s run function hardstone:blocks/lapis/detect
execute if score $active$ hs.n_gold matches 1.. as @a[scores={hs.n_gold=1..},nbt={Dimension:"minecraft:the_nether"}] at @s run function hardstone:blocks/n_gold/detect
execute if score $active$ hs.n_quartz matches 1.. as @a[scores={hs.n_quartz=1..},nbt={Dimension:"minecraft:the_nether"}] at @s run function hardstone:blocks/n_quartz/detect
execute if score $active$ hs.n_rack matches 1.. as @a[scores={hs.n_rack=1..},nbt={Dimension:"minecraft:the_nether"}] at @s run function hardstone:blocks/n_rack/detect
execute if score $active$ hs.redstone matches 1.. as @a[scores={hs.redstone=1..}] at @s run function hardstone:blocks/redstone/detect
execute if score $active$ hs.sandstone matches 1.. as @a[scores={hs.sandstone=1..}] at @s run function hardstone:blocks/sandstone/detect
execute if score $active$ hs.stone matches 1.. as @a[scores={hs.stone=1..}] at @s run function hardstone:blocks/stone/detect

execute unless score $active$ hs.diamond matches 1.. as @a[scores={hs.diamond=1..}] at @s run function hardstone:blocks/diamond/restore
