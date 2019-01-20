#kill too many SU-entities
execute as @s[tag=wt.SU.sad_orchid] run kill @e[tag=wt.SU.sad_orchid,distance=0.5..3]
#calling cleanup when blue_orchid is destroyed
execute unless block ~ ~ ~ minecraft:blue_orchid run function witchtrading:sad_orchid/cleanup
#effects
execute as @p[distance=..32] if entity @s[scores={wt.rng=5}] run particle minecraft:dripping_water ~ ~0.1 ~ 0.2 0.2 0.2 1 1 normal
effect give @a[distance=..3,nbt=!{ActiveEffects:[{Id:26b}]}] minecraft:luck 5 0 true
#remove SU-tag
tag @s remove wt.SU.sad_orchid
