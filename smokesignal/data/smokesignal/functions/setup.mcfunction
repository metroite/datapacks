schedule function smokesignal:main100 85t
#scoreboard
scoreboard objectives add ss.smokesignal dummy
scoreboard objectives add ss.counter dummy
execute unless score $duration$ ss.counter matches 1.. run scoreboard players set $duration$ ss.counter 35
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"smokesignal","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/smokesignal"},"hoverEvent":{"action":"show_text","value":"throw leaves on burning logs to create smoke signals"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function smokesignal:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
