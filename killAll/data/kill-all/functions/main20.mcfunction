#re-schedule
schedule function kill-all:main20 20t

#set score for ka.teams
execute as @a unless score @s ka.teams matches -99.. run scoreboard players set @a ka.teams 0

#count time
scoreboard players remove $time_left$ ka.settings 1
#calc hours
scoreboard players set $60$ ka.settings 60
scoreboard players operation $time_left_hm$ ka.settings = $time_left$ ka.settings
scoreboard players operation $time_left_hm$ ka.settings /= $60$ ka.settings
scoreboard players operation $time_left_h$ ka.settings = $time_left_hm$ ka.settings
scoreboard players operation $time_left_h$ ka.settings /= $60$ ka.settings
#calc minutes
scoreboard players operation $time_left_m$ ka.settings = $time_left_hm$ ka.settings
scoreboard players operation $time_left_m$ ka.settings %= $60$ ka.settings
#calc seconds
scoreboard players operation $time_left_s$ ka.settings = $time_left$ ka.settings
scoreboard players operation $time_left_s$ ka.settings %= $60$ ka.settings
#output time
execute if score $display_time$ ka.settings matches 1.. run title @a actionbar ["",{"text":"Time left: ","color":"gray"},{"score":{"name":"$time_left_h$","objective":"ka.settings"},"color":"gray"},{"text":"h ","color":"gray"},{"score":{"name":"$time_left_m$","objective":"ka.settings"},"color":"gray"},{"text":"m ","color":"gray"},{"score":{"name":"$time_left_s$","objective":"ka.settings"},"color":"gray"},{"text":"s","color":"gray"}]
#reset to keep scoreboard clean
scoreboard players reset $time_left_hm$ ka.settings
scoreboard players reset $time_left_m$ ka.settings
scoreboard players reset $time_left_s$ ka.settings
scoreboard players reset $time_left_h$ ka.settings
scoreboard players reset $60$ ka.settings

#check win condition
execute as @a if score @s ka.score = $GOAL$ ka.score run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" won!","color":"green"}]
execute as @a if score @s ka.score = $GOAL$ ka.score run schedule clear kill-all:main20
execute if score $time_left$ ka.settings matches 0 run tellraw @a ["",{"text":"Challenge lost!","color":"red"}]
execute if score $time_left$ ka.settings matches 0 run schedule clear kill-all:main20
