schedule function morsecode:main100 68t
schedule function morsecode:main20 3t
#scoreboard
scoreboard objectives add mc.itemrotation dummy
scoreboard objectives add mc.craftreceiver minecraft.crafted:minecraft.feather
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"morsecode","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/morsecode"},"hoverEvent":{"action":"show_text","value":"send morse codes no matter the distance or the dimension"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function morsecode:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
