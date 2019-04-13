execute positioned ~ ~0.5 ~ unless entity @e[type=minecraft:item,limit=1,sort=nearest,tag=!to.torchitem,nbt=!{Item:{id:"minecraft:torch",tag:{}}},nbt={Item:{id:"minecraft:torch",Count:1b}},distance=..0.5] run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:oak_button",tag:{}}},nbt={Item:{id:"minecraft:oak_button",Count:1b}},distance=..0.5] {Tags:["to.torchitem"],Item:{id:"minecraft:torch",Count:1b}}
execute positioned ~ ~-1.15 ~ run kill @e[tag=to.torchvisual,limit=1,sort=nearest,distance=..0.5]
execute positioned ~ ~-1.8 ~ run kill @e[tag=to.torchvisualfloor,limit=1,sort=nearest,distance=..0.5]
kill @s
