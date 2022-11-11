scoreboard objectives add g.deaths deathCount
execute unless score $display_name$ g.deaths matches 0.. run scoreboard players set $display_name$ g.deaths 1
execute if score $display_name$ g.deaths matches 1.. run setblock 32 1 11 minecraft:bedrock
execute if score $display_name$ g.deaths matches 1.. run setblock 32 0 11 minecraft:oak_sign
execute if score $display_name$ g.deaths matches 1.. run execute positioned 32 0 11 run forceload add ~ ~
scoreboard objectives add g.usebonemeal minecraft.used:minecraft.bone_meal
execute unless score $generate_trees$ g.usebonemeal matches 0.. run scoreboard players set $generate_trees$ g.usebonemeal 1
scoreboard objectives add g.sapling_height dummy
scoreboard objectives add g.sapling_rng dummy
#scheduled functions
schedule function graves:main20 12t
schedule function graves:main100 23t
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"graves","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/graves"},"hoverEvent":{"action":"show_text","value":"upon death a grave will be created"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function graves:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
