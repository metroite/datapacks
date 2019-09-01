#plant every dropped sapling if possible
execute if entity @s[nbt={Item:{id:"minecraft:oak_sapling"}}] if block ~ ~ ~ #reforestation:air if block ~ ~-1 ~ #reforestation:treeable run function reforestation:kill
execute if entity @s[nbt={Item:{id:"minecraft:spruce_sapling"}}] if block ~ ~ ~ #reforestation:air if block ~ ~-1 ~ #reforestation:treeable run function reforestation:kill
execute if entity @s[nbt={Item:{id:"minecraft:birch_sapling"}}] if block ~ ~ ~ #reforestation:air if block ~ ~-1 ~ #reforestation:treeable run function reforestation:kill
execute if entity @s[nbt={Item:{id:"minecraft:jungle_sapling"}}] if block ~ ~ ~ #reforestation:air if block ~ ~-1 ~ #reforestation:treeable run function reforestation:kill
execute if entity @s[nbt={Item:{id:"minecraft:acacia_sapling"}}] if block ~ ~ ~ #reforestation:air if block ~ ~-1 ~ #reforestation:treeable run function reforestation:kill
execute if entity @s[nbt={Item:{id:"minecraft:dark_oak_sapling"}}] if block ~ ~ ~ #reforestation:air if block ~ ~-1 ~ #reforestation:treeable run function reforestation:kill
