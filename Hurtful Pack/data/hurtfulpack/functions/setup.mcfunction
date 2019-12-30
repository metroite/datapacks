#scoreboard
scoreboard objectives add hp.storeboard dummy
execute unless score $bukkit$ hp.storeboard matches 0.. run scoreboard players set $bukkit$ hp.storeboard 1
scoreboard objectives add hp.cauldron minecraft.custom:minecraft.fill_cauldron
scoreboard objectives add hp.packed_ice minecraft.used:minecraft.packed_ice
scoreboard objectives add hp.blue_ice minecraft.used:minecraft.blue_ice
scoreboard objectives add hp.ice_block minecraft.used:minecraft.ice
scoreboard objectives add hp.suspstew minecraft.used:minecraft.suspicious_stew
scoreboard objectives add hp.leadcount dummy
#gamerules
execute unless score $reload$ hp.storeboard matches 1.. run gamerule naturalRegeneration false
execute unless score $reload$ hp.storeboard matches 1.. run gamerule spectatorsGenerateChunks false
execute unless score $reload$ hp.storeboard matches 1.. run gamerule showDeathMessages false
execute unless score $reload$ hp.storeboard matches 1.. run gamerule reducedDebugInfo true
execute unless score $reload$ hp.storeboard matches 1.. run gamerule keepInventory false
execute unless score $reload$ hp.storeboard matches 1.. run gamerule doWeatherCycle true
execute unless score $reload$ hp.storeboard matches 1.. run gamerule doTileDrops true
execute unless score $reload$ hp.storeboard matches 1.. run gamerule doMobSpawning true
execute unless score $reload$ hp.storeboard matches 1.. run gamerule mobGriefing true
execute unless score $reload$ hp.storeboard matches 1.. run gamerule doEntityDrops true
execute unless score $reload$ hp.storeboard matches 1.. run gamerule doFireTick true
execute unless score $reload$ hp.storeboard matches 1.. run gamerule doDaylightCycle true
execute unless score $reload$ hp.storeboard matches 1.. run gamerule maxEntityCramming 5
execute unless score $reload$ hp.storeboard matches 1.. run difficulty hard
#optional disable functions
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $earlyleatherarmor$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $graves$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $growontoptree$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $hardstone$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $heavyarmor$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $horsetogether$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $limitedlife$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $loud2x2tnt$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $morsecode$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $naturalpaths$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $reforestation$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $sapphire$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $signalfire$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $torchout$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $usefulender$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $ventilators$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $smartvillage$ hp.storeboard 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $witchtrading$ hp.storeboard 1
#optional changes
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $noskulldustfromgraves$ l2t.storeboard 0
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $mode$ wop.extend 1
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $distance$ ue.pearlthrow 14
execute unless score $reload$ hp.storeboard matches 1.. run scoreboard players set $display_name$ g.deaths 0
#run above commands only once
execute unless score $reload$ hp.storeboard matches 0.. run scoreboard players set $reload$ hp.storeboard 0
scoreboard players add $reload$ hp.storeboard 1
#scheduled functions
function hurtfulpack:main100

#disable all included datapacks
datapack disable "file/earlyleatherarmor"
datapack disable "file/graves"
datapack disable "file/growontoptree"
datapack disable "file/hardstone"
datapack disable "file/heavyarmor"
datapack disable "file/limitedlife"
datapack disable "file/loud2x2tnt"
datapack disable "file/morsecode"
datapack disable "file/naturalpaths"
datapack disable "file/reforestation"
datapack disable "file/sapphire"
datapack disable "file/signalfire"
datapack disable "file/torchout"
datapack disable "file/usefulender"
datapack disable "file/ventilators"
datapack disable "file/smartvillage"
datapack disable "file/witchtrading"

#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"Hurtful Pack","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master"},"hoverEvent":{"action":"show_text","value":"datapack pack for survival, but harder"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function hurtfulpack:uninstall/toggle"},"hoverEvent":{"action":"show_text","value":"click to toggle uninstallation"}},{"text":"]","color":"dark_red"}]
