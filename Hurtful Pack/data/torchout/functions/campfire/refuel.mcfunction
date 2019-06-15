execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:oak_log"}}] positioned ~ ~-0.5 ~ run function torchout:campfire/in
execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:spruce_log"}}] positioned ~ ~-0.5 ~ run function torchout:campfire/in
execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:birch_log"}}] positioned ~ ~-0.5 ~ run function torchout:campfire/in
execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:acacia_log"}}] positioned ~ ~-0.5 ~ run function torchout:campfire/in
execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:jungle_log"}}] positioned ~ ~-0.5 ~ run function torchout:campfire/in
execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:dark_oak_log"}}] positioned ~ ~-0.5 ~ run function torchout:campfire/in
kill @e[distance=..0.5,nbt={Item:{id:"minecraft:oak_log"}},limit=1,sort=nearest]
kill @e[distance=..0.5,nbt={Item:{id:"minecraft:spruce_log"}},limit=1,sort=nearest]
kill @e[distance=..0.5,nbt={Item:{id:"minecraft:birch_log"}},limit=1,sort=nearest]
kill @e[distance=..0.5,nbt={Item:{id:"minecraft:acacia_log"}},limit=1,sort=nearest]
kill @e[distance=..0.5,nbt={Item:{id:"minecraft:jungle_log"}},limit=1,sort=nearest]
kill @e[distance=..0.5,nbt={Item:{id:"minecraft:dark_oak_log"}},limit=1,sort=nearest]
