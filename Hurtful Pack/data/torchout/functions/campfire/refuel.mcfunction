execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:oak_wood"}}] positioned ~ ~-0.5 ~ run function torchout:campfire/in
execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:spruce_wood"}}] positioned ~ ~-0.5 ~ run function torchout:campfire/in
execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:birch_wood"}}] positioned ~ ~-0.5 ~ run function torchout:campfire/in
execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:acacia_wood"}}] positioned ~ ~-0.5 ~ run function torchout:campfire/in
execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:jungle_wood"}}] positioned ~ ~-0.5 ~ run function torchout:campfire/in
execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:dark_oak_wood"}}] positioned ~ ~-0.5 ~ run function torchout:campfire/in
kill @e[distance=..0.5,nbt={Item:{id:"minecraft:oak_wood"}},limit=1,sort=nearest]
kill @e[distance=..0.5,nbt={Item:{id:"minecraft:spruce_wood"}},limit=1,sort=nearest]
kill @e[distance=..0.5,nbt={Item:{id:"minecraft:birch_wood"}},limit=1,sort=nearest]
kill @e[distance=..0.5,nbt={Item:{id:"minecraft:acacia_wood"}},limit=1,sort=nearest]
kill @e[distance=..0.5,nbt={Item:{id:"minecraft:jungle_wood"}},limit=1,sort=nearest]
kill @e[distance=..0.5,nbt={Item:{id:"minecraft:dark_oak_wood"}},limit=1,sort=nearest]
