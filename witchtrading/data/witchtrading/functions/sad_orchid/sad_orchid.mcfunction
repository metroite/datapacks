#when destroyed
execute unless block ~ ~ ~ minecraft:blue_orchid run function witchtrading:sad_orchid/cleanup

#effects
execute as @p if entity @s[scores={wt.rng=5}] run particle minecraft:dripping_water ~ ~0.1 ~ 0.2 0.2 0.2 1 1 normal
effect give @a[distance=..6,nbt=!{ActiveEffects:[{Id:26b}]}] minecraft:luck 5 0 true
execute at @a[distance=..6,scores={wt.rng=9}] positioned ~ ~1.35 ~ run particle minecraft:dripping_water ^-0.15 ^ ^0.275 0 0 0 1 1 normal
