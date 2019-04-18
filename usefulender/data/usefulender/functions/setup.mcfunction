scoreboard objectives add ue.pearlthrow minecraft.used:minecraft.ender_pearl
scoreboard objectives add ue.ea.shoot minecraft.used:minecraft.bow
scoreboard objectives add ue.pearlX dummy
scoreboard objectives add ue.pearlY dummy
scoreboard objectives add ue.pearlZ dummy

#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"usefulender","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/usefulender"},"hoverEvent":{"action":"show_text","value":"ender pearls but now actually useful"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"}]
