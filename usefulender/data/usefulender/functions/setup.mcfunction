scoreboard objectives add ue.pearlthrow minecraft.used:minecraft.ender_pearl
scoreboard objectives add ue.ea.shoot minecraft.used:minecraft.bow
scoreboard objectives add ue.pearlX dummy
scoreboard objectives add ue.pearlY dummy
scoreboard objectives add ue.pearlZ dummy
scoreboard objectives add ue.uuid dummy
scoreboard players set 0 ue.uuid 0
execute unless score $max$ ue.uuid >= 0 ue.uuid run scoreboard players set $max$ ue.uuid 10000

#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"usefulender","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/usefulender"},"hoverEvent":{"action":"show_text","value":"ender pearls but now actually useful"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"}]
