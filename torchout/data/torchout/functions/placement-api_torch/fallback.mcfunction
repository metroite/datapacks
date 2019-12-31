execute store success score €fallback€ to.pa.fail positioned ~ ~1.5 ~ run data merge entity @e[type=minecraft:item,distance=0.5..3,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:oak_button",tag:{}}},nbt={Item:{id:"minecraft:oak_button",Count:1b}}] {Tags:["to.torchitem"],Item:{id:"minecraft:torch",Count:1b}}
execute if score €fallback€ to.pa.fail > 0 to.pa.fail run scoreboard players remove @s to.pa.fail 1
scoreboard players set €fallback€ to.pa.fail 0
