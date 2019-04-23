gamerule naturalRegeneration false
gamerule spectatorsGenerateChunks false
gamerule showDeathMessages false
gamerule reducedDebugInfo true
gamerule keepInventory false
gamerule doWeatherCycle true
gamerule doTileDrops true
gamerule doMobSpawning true
gamerule mobGriefing true
gamerule doEntityDrops true
gamerule doFireTick true
gamerule doDaylightCycle true
#limitedlife
execute as @a unless entity @s[scores={ll.deaths=0..}] run tag @s add ll.cured
execute as @a unless entity @s[scores={ll.deaths=0..}] run scoreboard players set @s ll.deaths 3
#worseoldpvp
scoreboard players set $mode$ wop.extend 1

#disable all my datapacks
datapack disable "file/earlyleatherarmor"
datapack disable "file/graves"
datapack disable "file/growontoptree"
datapack disable "file/limitedlife"
datapack disable "file/loud2x2tnt"
datapack disable "file/morsecode"
datapack disable "file/sapphire"
datapack disable "file/signalfire"
datapack disable "file/torchout"
datapack disable "file/usefulender"
datapack disable "file/ventilators"
datapack disable "file/witchtrading"
datapack disable "file/worseoldpvp"

#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"Hurtful Pack","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master"},"hoverEvent":{"action":"show_text","value":"datapack pack for survival, but harder"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function hurtfulpack:uninstall/toggle"},"hoverEvent":{"action":"show_text","value":"click to toggle uninstallation"}},{"text":"]","color":"dark_red"}]
