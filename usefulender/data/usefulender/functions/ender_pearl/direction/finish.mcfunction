#detect block and call according success function
execute if block ~ ~ ~ minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if block ~1 ~ ~ minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if block ~-1 ~ ~ minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if block ~ ~1 ~ minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if block ~ ~-1 ~ minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if block ~ ~ ~1 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if block ~ ~ ~-1 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute unless block ~ ~ ~ #usefulender:nocollision run function usefulender:ender_pearl/success
