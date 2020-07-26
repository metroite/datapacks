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
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"hardstone","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/hardstone"},"hoverEvent":{"action":"show_text","value":"removed buttery consistency out of stone - caving might be a better option than strip mining - craft cobblestone slabs together - stone tools have become flint tools - diamonds might pling away - be careful in the nether"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function hardstone:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
