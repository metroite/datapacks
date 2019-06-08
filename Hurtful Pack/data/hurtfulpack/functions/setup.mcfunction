#storeboard
scoreboard objectives add hp.storeboard dummy
scoreboard objectives add hp.cauldron minecraft.custom:minecraft.fill_cauldron
scoreboard players set $0$ hp.storeboard 0
#gamerules
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule naturalRegeneration false
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule spectatorsGenerateChunks false
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule showDeathMessages false
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule reducedDebugInfo true
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule keepInventory false
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule doWeatherCycle true
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule doTileDrops true
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule doMobSpawning true
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule mobGriefing true
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule doEntityDrops true
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule doFireTick true
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule doDaylightCycle true
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run gamerule maxEntityCramming 5
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run difficulty hard
#worseoldpvp
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run scoreboard players set $mode$ wop.extend 1
#usefulender
execute unless score $reload$ hp.storeboard > $0$ hp.storeboard run scoreboard players set $distance$ ue.pearlthrow 14
#run above commands only once
execute unless score $reload$ hp.storeboard >= $0$ hp.storeboard run scoreboard players set $reload$ hp.storeboard 0
scoreboard players add $reload$ hp.storeboard 1

#disable all included datapacks
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
