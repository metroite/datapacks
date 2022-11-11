#set unique id
scoreboard players add $uuid_counter$ ka.uuid 1
scoreboard players operation @s ka.uuid = $uuid_counter$ ka.uuid
