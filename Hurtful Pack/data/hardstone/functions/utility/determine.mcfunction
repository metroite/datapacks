#determine block
execute if score $active$ hs.minestone matches 1.. as @a[scores={hs.minestone=1..}] at @s run function hardstone:stone/detect
execute if score $active$ hs.minecobble matches 1.. as @a[scores={hs.minecobble=1..}] at @s run function hardstone:cobblestone/detect
execute if score $active$ hs.minesand matches 1.. as @a[scores={hs.minesand=1..}] at @s run function hardstone:sandstone/detect
execute if score $active$ hs.minegrass matches 1.. as @a[scores={hs.minegrass=1..}] at @s run function hardstone:grass/detect
execute if score $active$ hs.minerack matches 1.. as @a[scores={hs.minerack=1..},nbt={Dimension:"minecraft:the_nether"}] at @s run function hardstone:netherrack/detect
execute if score $active$ hs.minedia matches 1.. as @a[scores={hs.minedia=1..}] at @s run function hardstone:cobblestone/detect
execute unless score $active$ hs.minedia matches 1.. as @a[scores={hs.minedia=1..}] at @s run function hardstone:diamond/restore
