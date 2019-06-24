#slow falling
effect give @s minecraft:slow_falling 3 0 true
#particles
particle minecraft:end_rod ~ ~2 ~ 0 0 0 0 1 force
particle minecraft:crit ~ ~-1 ~ 0.1 0 0.1 0.5 10 force
execute if entity @s[nbt={OnGround:1b}] run particle minecraft:crit ~ ~1 ~ 0.25 0.5 0.25 1 500 force
execute if entity @s[nbt={OnGround:1b}] run playsound minecraft:entity.generic.big_fall ambient @a ~ ~ ~ 2 1.5
#remove tag if ground is reached
tag @s[nbt={OnGround:1b}] remove vd.tp_done
