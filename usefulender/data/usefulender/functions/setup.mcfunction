schedule function usefulender:main100 52t
#scoreboard
scoreboard objectives add ue.pearlthrow minecraft.used:minecraft.ender_pearl
scoreboard objectives add ue.ea.shoot minecraft.used:minecraft.bow
execute unless score $enderarrows$ ue.ea.shoot matches 0.. run scoreboard players set $enderarrows$ ue.ea.shoot 1
scoreboard objectives add ue.ea.shootc minecraft.used:minecraft.crossbow
scoreboard objectives add ue.ea.bind dummy
scoreboard players set 2 ue.ea.bind 2
execute unless score $bindtime$ ue.ea.bind matches 0.. run scoreboard players set $bindtime$ ue.ea.bind 30
scoreboard objectives add ue.pearlX dummy
scoreboard objectives add ue.pearlY dummy
scoreboard objectives add ue.pearlZ dummy
scoreboard objectives add ue.uuid dummy
scoreboard players set 0 ue.uuid 0
execute unless score $max$ ue.uuid >= 0 ue.uuid run scoreboard players set $max$ ue.uuid 10000
execute unless score $accuracy$ ue.pearlthrow >= 0 ue.uuid run scoreboard players set $accuracy$ ue.pearlthrow 3
execute unless score $distance$ ue.pearlthrow >= 0 ue.uuid run scoreboard players set $distance$ ue.pearlthrow 8
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"usefulender","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/usefulender"},"hoverEvent":{"action":"show_text","value":"ender pearls but now actually useful"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function usefulender:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
