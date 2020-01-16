scoreboard objectives add to.damage dummy
execute unless score $uses$ to.damage > 0 to.pa.fail run scoreboard players set $uses$ to.damage 64
scoreboard objectives add to.flaming dummy
scoreboard objectives add to.ta.shoot minecraft.used:minecraft.bow
execute unless score $torcharrows$ to.ta.shoot matches 0.. run scoreboard players set $torcharrows$ to.ta.shoot 1
scoreboard objectives add to.ta.shootc minecraft.used:minecraft.crossbow
scoreboard objectives add to.ta.bind dummy
scoreboard players set 2 to.ta.bind 2
execute unless score $bindtime$ to.ta.bind matches 0.. run scoreboard players set $bindtime$ to.ta.bind 30
###placement-api_torch
scoreboard objectives add to.torch minecraft.used:minecraft.torch
execute unless score $burntime$ to.torch > 0 to.pa.fail run scoreboard players set $burntime$ to.torch 60
scoreboard objectives add to.pa.fail dummy
scoreboard players set 0 to.pa.fail 0
scoreboard players add €fallback€ to.pa.fail 0
###placement-api_campfire
scoreboard objectives add to.campfire minecraft.used:minecraft.campfire
#scheduled main function for global counter and burnout detection
schedule function torchout:main1200 6t
schedule function torchout:main9 3t
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"torchout","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/torchout"},"hoverEvent":{"action":"show_text","value":"torches and campfires (can be fueled with logs) burn out after a while, light them up with flint and steels"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function torchout:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
