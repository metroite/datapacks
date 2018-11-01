
scoreboard objectives add sp.sapphire dummy
scoreboard players set c1 sp.sapphire 195287
scoreboard players set c2 sp.sapphire -3548
scoreboard players set c3 sp.sapphire -68481
scoreboard players set 65 sp.sapphire 65
scoreboard players set 129 sp.sapphire 129
scoreboard players set 0 sp.sapphire 0
scoreboard players set -2 sp.sapphire -2

scoreboard players set timer sp.sapphire 0

scoreboard players set x_temp sp.sapphire 0
scoreboard players set z_temp sp.sapphire 0

scoreboard players set x_random sp.sapphire 0
scoreboard players set z_random sp.sapphire 0

#feature-compatibility: limitedlife
function limitedlife:sapphire/setup

#scoreboard objectives add sp.craftdetector minecraft.crafted:minecraft.water_bucket
scoreboard objectives add sp.craftlight minecraft.crafted:minecraft.dirt


tellraw @a ["",{"text":"sapphire","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/sapphire"},"hoverEvent":{"action":"show_text","value":"sapphire now spawning in deep water, useful to play with the weather"}},{"text":"  by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"}]
