#give speed if on a path
execute as @a at @s if block ~ ~ ~ minecraft:grass_path run effect give @s minecraft:speed 1 1 true
#repeat
schedule function naturalpaths:path/optional_speed 10t
