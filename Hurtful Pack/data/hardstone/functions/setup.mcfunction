#scoreboard
scoreboard objectives add hs.minestone minecraft.mined:minecraft.stone
scoreboard objectives add hs.minecobble minecraft.mined:minecraft.cobblestone
scoreboard objectives add hs.minesand minecraft.mined:minecraft.sandstone
scoreboard objectives add hs.minegrass minecraft.mined:minecraft.grass_block
scoreboard objectives add hs.minerack minecraft.mined:minecraft.netherrack
scoreboard objectives add hs.minedia minecraft.mined:minecraft.diamond_ore
#optional
scoreboard players set $falling_cobble$ hs.minecobble 1

execute unless score $active$ hs.minestone matches 0.. run scoreboard players set $active$ hs.minestone 1
execute unless score $active$ hs.minecobble matches 0.. run scoreboard players set $active$ hs.minecobble 1
execute unless score $active$ hs.minesand matches 0.. run scoreboard players set $active$ hs.minesand 1
execute unless score $active$ hs.minegrass matches 0.. run scoreboard players set $active$ hs.minegrass 1
execute unless score $active$ hs.minerack matches 0.. run scoreboard players set $active$ hs.minerack 1
execute unless score $active$ hs.minedia matches 0.. run scoreboard players set $active$ hs.minedia 1
#scheduled functions
schedule function hardstone:main10 6t
schedule function hardstone:utility/resetscore 72t
