#players have to be defined!
scoreboard players add @s wop.extend 0
#data merge @e item
execute unless score @s wop.mode matches 1 as @e[distance=..4,type=minecraft:item,nbt=!{Item:{tag:{wopcooldown:0}}},tag=!wop.no] run function worseoldpvp:cooldown/no
execute if score @s wop.mode matches 1 as @e[distance=..4,type=minecraft:item,nbt=!{Item:{tag:{wopcooldown:1}}},tag=!wop.no] run function worseoldpvp:cooldown/yes
#effects when holding wopdone in mainhand
execute if score @s wop.mode matches ..1 if entity @s[nbt={SelectedItem:{tag:{wopdone:1}}}] run function worseoldpvp:selected
#sword blocking utility (like scoreboard handling)
execute if score @s wop.mode matches 0..1 run function worseoldpvp:sword-block/utility
