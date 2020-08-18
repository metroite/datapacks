#determine mode and change nbt of tool accordingly
execute unless score @s wop.mode matches 1 as @e[distance=..1,type=minecraft:item,tag=!wop.no,nbt=!{Item:{tag:{wopcooldown:0}}}] unless data entity @s Item.tag.wopno run function worseoldpvp:cooldown/no
execute if score @s wop.mode matches 1 as @e[distance=..1,type=minecraft:item,tag=!wop.no,nbt=!{Item:{tag:{wopcooldown:1}}}] unless data entity @s Item.tag.wopno run function worseoldpvp:cooldown/yes
#netherite nbt update fix
execute unless score @s wop.mode matches 1 as @e[distance=..1,type=minecraft:item,tag=!wop.no,nbt=!{Item:{tag:{wopnetherite:0}}}] unless data entity @s Item.tag.wopno run function worseoldpvp:cooldown/no_netherite
execute if score @s wop.mode matches 1 as @e[distance=..1,type=minecraft:item,tag=!wop.no,nbt=!{Item:{tag:{wopnetherite:1}}}] unless data entity @s Item.tag.wopno run function worseoldpvp:cooldown/yes_netherite
