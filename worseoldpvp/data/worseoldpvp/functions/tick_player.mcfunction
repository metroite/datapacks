#sets $mode$ of all players to default mode
execute unless score @s wop.mode matches 0..2 run scoreboard players operation @s wop.mode = $mode$ wop.mode
#data merge @e item
execute unless score @s wop.mode matches 1 as @e[type=minecraft:item,distance=..4,nbt=!{Item:{tag:{wopcooldown:0b}}},tag=!wop.no] run function worseoldpvp:cooldown/no
execute if score @s wop.mode matches 1 as @e[type=minecraft:item,distance=..4,nbt=!{Item:{tag:{wopcooldown:1b}}},tag=!wop.no] run function worseoldpvp:cooldown/yes
#effects when holding wopdone in mainhand
execute if entity @s[nbt={SelectedItem:{tag:{wopdone:1b}}}] run function worseoldpvp:selected
execute if score @s wop.mode matches 0..1 run function worseoldpvp:sword-block/utility
