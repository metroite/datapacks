#scoreboards
scoreboard objectives add vd.coordinates dummy
execute unless score $shift_x$ vd.coordinates matches 0.. run scoreboard players set $shift_x$ vd.coordinates 15000000
execute unless score $shift_z$ vd.coordinates matches 0.. run scoreboard players set $shift_z$ vd.coordinates -15000000
execute unless score $travel$ vd.coordinates matches 0.. run scoreboard players set $travel$ vd.coordinates 16
scoreboard objectives add vd.grave dummy
execute unless score $maxrange$ vd.grave matches 0.. run scoreboard players set $maxrange$ vd.grave 4
scoreboard objectives add vd.health health

#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"voiddimension","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/voiddimension"},"hoverEvent":{"action":"show_text","value":"another dimension set in the end dimension called the void"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function voiddimension:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
