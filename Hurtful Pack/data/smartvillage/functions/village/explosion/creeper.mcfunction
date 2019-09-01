#turn off mob griefing for a tick
execute store result score @s sv.bell_ring run gamerule mobGriefing
execute if score @s sv.bell_ring matches 1.. run gamerule mobGriefing false
execute if score @s sv.bell_ring matches 1.. run schedule function smartvillage:village/explosion/revert_mobgriefing 4s
