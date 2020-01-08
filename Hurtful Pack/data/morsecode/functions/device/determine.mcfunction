execute if entity @s[tag=!mc.determined,nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}}] run function morsecode:device/add_tag
execute if entity @s[tag=mc.determined,nbt=!{Facing:1b,Item:{id:"minecraft:redstone_torch"}}] run function morsecode:device/remove_tag
execute if entity @s[tag=mc.determined] unless block ~ ~ ~ minecraft:redstone_wire unless block ~ ~ ~ minecraft:stone_button[face=floor] run function morsecode:device/remove_tag
