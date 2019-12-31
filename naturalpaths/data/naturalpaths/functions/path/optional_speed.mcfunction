#give speed if on a path
execute as @a at @s if block ~ ~ ~ #naturalpaths:air if block ~ ~-0.25 ~ minecraft:grass_path run effect give @s minecraft:speed 1 0 true
execute as @a at @s if block ~ ~ ~ minecraft:grass_path run effect give @s minecraft:speed 1 0 true
#re-schedule
execute if score $speedpaths$ np.global matches 1.. run schedule function naturalpaths:path/optional_speed 13t
