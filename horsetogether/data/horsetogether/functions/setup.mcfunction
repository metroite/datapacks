schedule function horsetogether:main50 27t
#scoreboards
scoreboard objectives add ht.rotation dummy
scoreboard objectives add ht.speed minecraft.custom:minecraft.horse_one_cm
execute unless score $impact$ ht.rotation matches 0.. run scoreboard players set $impact$ ht.rotation 1
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"horsetogether","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/horsetogether"},"hoverEvent":{"action":"show_text","value":"saddled and armored horses have a passenger seat if other players are around"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function horsetogether:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
