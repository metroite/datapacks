function kill-all:main20
#found mob heads at https://github.com/MadCatHoG/MobHeadDropsV5/tree/master/data/minecraft/loot_tables/entities by MadCatHoG
#scoreboard
scoreboard objectives add ka.uuid dummy
scoreboard objectives add ka.teams dummy
scoreboard objectives add ka.score dummy "killAll Challenge"
execute unless score $GOAL$ ka.score matches 1.. run scoreboard objectives setdisplay sidebar ka.score
execute unless score $GOAL$ ka.score matches 1.. run scoreboard players set $GOAL$ ka.score 68
execute unless score $Team ka.score matches 0.. run scoreboard players add $Team ka.score 0
scoreboard objectives add ka.settings dummy
execute unless score $team_mode$ ka.settings matches 0.. run scoreboard players set $team_mode$ ka.settings 1
execute unless score $display_time$ ka.settings matches 0.. run scoreboard players set $display_time$ ka.settings 1
execute unless score $time_in_seconds$ ka.settings matches 1.. run scoreboard players set $time_in_seconds$ ka.settings 43200
execute unless score $time_left$ ka.settings matches 1.. run scoreboard players operation $time_left$ ka.settings = $time_in_seconds$ ka.settings
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"killAll","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/killAll"},"hoverEvent":{"action":"show_text","value":"challenge datapack: kill all mobs once"}},{"text":"  by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function kill-all:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
