execute as @s[tag=g.flowers,tag=g.flower+] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~1 ~ ~ ~1 ~ minecraft:sunflower[half=upper] replace minecraft:air
execute as @s[tag=!g.flowers,tag=g.flower+] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~1 ~ ~ ~1 ~ minecraft:lilac[half=upper] replace minecraft:air
execute as @s[tag=g.flowers,tag=!g.flower+] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~1 ~ ~ ~1 ~ minecraft:peony[half=upper] replace minecraft:air
execute as @s[tag=!g.flowers,tag=!g.flower+] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~1 ~ ~ ~1 ~ minecraft:rose_bush[half=upper] replace minecraft:air

execute as @s[tag=g.flowers,tag=g.flower+] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:sunflower[half=lower] replace minecraft:air
execute as @s[tag=!g.flowers,tag=g.flower+] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:lilac[half=lower] replace minecraft:air
execute as @s[tag=g.flowers,tag=!g.flower+] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:peony[half=lower] replace minecraft:air
execute as @s[tag=!g.flowers,tag=!g.flower+] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:rose_bush[half=lower] replace minecraft:air

kill @s
