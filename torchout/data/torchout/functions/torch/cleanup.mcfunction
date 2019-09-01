execute positioned ~ ~0.5 ~ unless entity @e[type=minecraft:item,limit=1,sort=nearest,tag=!to.torchitem,nbt=!{Item:{id:"minecraft:torch",tag:{}}},nbt={Item:{id:"minecraft:torch",Count:1b}},distance=..0.5] run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:oak_button",tag:{}}},nbt={Item:{id:"minecraft:oak_button",Count:1b}},distance=..0.5] {Tags:["to.torchitem"],Item:{id:"minecraft:torch",Count:1b}}
execute positioned ~ ~-0.215 ~ run kill @e[distance=..0.5,tag=to.torchvisual,limit=1,sort=nearest]
execute positioned ~ ~-0.38 ~ run kill @e[distance=..0.5,tag=to.torchvisualfloor,limit=1,sort=nearest]
kill @s
