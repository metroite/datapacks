#scoreboards
scoreboard objectives add vd.coordinates dummy
scoreboard players set 0 vd.coordinates 0
scoreboard players set 1 vd.coordinates 1
scoreboard players set 10 vd.coordinates 10
scoreboard players set 100 vd.coordinates 100
scoreboard players set 1000 vd.coordinates 1000
scoreboard players set 10000 vd.coordinates 10000
scoreboard players set 100000 vd.coordinates 100000
scoreboard players set -1 vd.coordinates -1
scoreboard players set -10 vd.coordinates -10
scoreboard players set -100 vd.coordinates -100
scoreboard players set -1000 vd.coordinates -1000
scoreboard players set -10000 vd.coordinates -10000
scoreboard players set -100000 vd.coordinates -100000
execute unless score $shift$ vd.coordinates >= 0 vd.coordinates run scoreboard players set $shift$ vd.coordinates 10000000
execute unless score $travel$ vd.coordinates >= 0 vd.coordinates run scoreboard players set $travel$ vd.coordinates 16
scoreboard objectives add vd.grave dummy
execute unless score $maxrange$ vd.grave >= 0 vd.coordinates run scoreboard players set $maxrange$ vd.grave 4
scoreboard objectives add vd.health health

#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"voiddimension","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/voiddimension"},"hoverEvent":{"action":"show_text","value":"another dimension set in the end dimension called the void"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function voiddimension:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
