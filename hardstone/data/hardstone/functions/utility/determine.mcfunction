#determine block
execute as @a[scores={hs.minestone=1..}] at @s run function hardstone:stone/detect
execute as @a[scores={hs.minecobble=1..}] at @s run function hardstone:cobblestone/detect
execute as @a[scores={hs.minesand=1..}] at @s run function hardstone:sandstone/detect
execute as @a[scores={hs.minegrass=1..}] at @s run function hardstone:grass/detect
execute as @a[scores={hs.minerack=1..},nbt={Dimension:-1}] at @s run function hardstone:netherrack/detect
execute as @a[scores={hs.minedia=1..}] at @s run function hardstone:cobblestone/detect
