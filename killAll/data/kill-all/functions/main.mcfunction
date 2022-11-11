#set uuid
execute as @a unless score @s ka.uuid matches 1.. run function kill-all:uuid/set
