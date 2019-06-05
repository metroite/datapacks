execute store success score _fallback_ to.pa.fail run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:oak_button",tag:{}}},nbt={Item:{id:"minecraft:oak_button",Count:1b}},distance=..2] {Tags:["to.torchitem"],Item:{id:"minecraft:torch",Count:1b}}
execute if score _fallback_ to.pa.fail > 0 to.pa.fail run scoreboard players remove @s to.pa.fail 1
scoreboard players set _fallback_ to.pa.fail 0
