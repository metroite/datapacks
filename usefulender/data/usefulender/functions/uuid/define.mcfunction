scoreboard players reset @s ue.pearlthrow
scoreboard players add $counter$ ue.uuid 1
execute if score $counter$ ue.uuid >= $max$ ue.uuid run scoreboard players set $counter$ ue.uuid 1
scoreboard players operation @s ue.uuid = $counter$ ue.uuid
