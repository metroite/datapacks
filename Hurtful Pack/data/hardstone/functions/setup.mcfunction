#scoreboard
scoreboard objectives add hs.minestone minecraft.mined:minecraft.stone
scoreboard objectives add hs.minecobble minecraft.mined:minecraft.cobblestone
scoreboard objectives add hs.minesand minecraft.mined:minecraft.sandstone
scoreboard objectives add hs.minegrass minecraft.mined:minecraft.grass_block
scoreboard objectives add hs.minerack minecraft.mined:minecraft.netherrack
scoreboard objectives add hs.minedia minecraft.mined:minecraft.diamond_ore
#scheduled functions
schedule function hardstone:main10 6t
schedule function hardstone:utility/resetscore 72t
