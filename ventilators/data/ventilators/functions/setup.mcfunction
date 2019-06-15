scoreboard objectives add v.ventilator dummy
scoreboard players set 9 v.ventilator 9
scoreboard players set 11 v.ventilator 11
scoreboard players set 1 v.ventilator 1
scoreboard players set 2 v.ventilator 2
scoreboard players set 3 v.ventilator 3
scoreboard players set 4 v.ventilator 4
scoreboard players set 5 v.ventilator 5
scoreboard players set 6 v.ventilator 6
scoreboard objectives add v.sound dummy
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"ventilators","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/1.13/ventilators"},"hoverEvent":{"action":"show_text","value":"build yourself some blowing ventilators"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function ventilators:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
