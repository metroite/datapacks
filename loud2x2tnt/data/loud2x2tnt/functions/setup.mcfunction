schedule function loud2x2tnt:main50 11t
#scoreboard
scoreboard objectives add l2t.storeboard dummy
execute unless score $noskulldustfromgraves$ l2t.storeboard matches 0.. run scoreboard players set $noskulldustfromgraves$ l2t.storeboard 0
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"loud2x2tnt","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/loud2x2tnt"},"hoverEvent":{"action":"show_text","value":"tnts placed in a 2x2x2 shape (ignite only one!) will cause a big BOOM"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function loud2x2tnt:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
