#summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:tnt"},Time:1}
#particle minecraft:barrier ~ ~1.5 ~ 0 0 0 0 1 force
summon minecraft:creeper ~ ~ ~ {ignited:1b,Fuse:1s,NoAI:1b,ExplosionRadius:4}
#turn off mob griefing for a tick
execute store result score @s sv.bell_ring run gamerule mobGriefing
execute if score @s sv.bell_ring matches 1.. run gamerule mobGriefing false
execute if score @s sv.bell_ring matches 1.. run schedule function smartvillage:village/explosion/revert_mobgriefing 2t
kill @s
