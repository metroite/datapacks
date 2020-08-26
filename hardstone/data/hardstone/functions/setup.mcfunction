#scoreboard
scoreboard objectives add hs.coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add hs.cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add hs.diamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add hs.emerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add hs.gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add hs.grassblock minecraft.mined:minecraft.grass_block
scoreboard objectives add hs.iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add hs.lapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add hs.redstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add hs.sandstone minecraft.mined:minecraft.sandstone
scoreboard objectives add hs.stone minecraft.mined:minecraft.stone
#optional
execute unless score $falling$ hs.cobblestone matches 0.. run scoreboard players set $falling$ hs.cobblestone 1
execute unless score $nugget$ hs.iron matches 0.. run scoreboard players set $nugget$ hs.iron 1
execute unless score $nugget$ hs.gold matches 0.. run scoreboard players set $nugget$ hs.gold 1

execute unless score $active$ hs.coal matches 0.. run scoreboard players set $active$ hs.coal 1
execute unless score $active$ hs.cobblestone matches 0.. run scoreboard players set $active$ hs.cobblestone 1
execute unless score $active$ hs.diamond matches 0.. run scoreboard players set $active$ hs.diamond 1
execute unless score $active$ hs.emerald matches 0.. run scoreboard players set $active$ hs.emerald 1
execute unless score $active$ hs.gold matches 0.. run scoreboard players set $active$ hs.gold 1
execute unless score $active$ hs.grassblock matches 0.. run scoreboard players set $active$ hs.grassblock 1
execute unless score $active$ hs.iron matches 0.. run scoreboard players set $active$ hs.iron 1
execute unless score $active$ hs.lapis matches 0.. run scoreboard players set $active$ hs.lapis 1
execute unless score $active$ hs.redstone matches 0.. run scoreboard players set $active$ hs.redstone 1
execute unless score $active$ hs.sandstone matches 0.. run scoreboard players set $active$ hs.sandstone 1
execute unless score $active$ hs.stone matches 0.. run scoreboard players set $active$ hs.stone 1
#scheduled functions
schedule function hardstone:main10 6t
schedule function hardstone:main140 72t
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"hardstone","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/hardstone"},"hoverEvent":{"action":"show_text","value":"removed buttery consistency out of stone - caving might be a better option than strip mining - craft cobblestone slabs together - stone tools have become flint tools - diamonds might pling away - be careful in the nether"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function hardstone:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
