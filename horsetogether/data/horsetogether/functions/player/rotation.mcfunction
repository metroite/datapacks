execute store result score @s ht.rotation run data get entity @s Rotation[1] 100
#reposition saddle depending on angle
execute if score $impact$ ht.rotation matches 1.. run function horsetogether:player/align_heavy
execute if score $impact$ ht.rotation matches ..0 run function horsetogether:player/align_light
