#players have to be defined!
scoreboard players add @a wop.extend 0
#sets $mode$ of all players not in a mode to default mode
execute unless score @s wop.mode matches 0..2 run scoreboard players operation @s wop.mode = $mode$ wop.mode
#data merge @e item
execute if score $oldmethod$ wop.extend matches 1.. unless score @s wop.mode matches 1 as @e[distance=..4,type=minecraft:item,nbt=!{Item:{tag:{wopcooldown:0}}},tag=!wop.no] run function worseoldpvp:cooldown/no
execute if score $oldmethod$ wop.extend matches 1.. if score @s wop.mode matches 1 as @e[distance=..4,type=minecraft:item,nbt=!{Item:{tag:{wopcooldown:1}}},tag=!wop.no] run function worseoldpvp:cooldown/yes
execute if score $oldmethod$ wop.extend matches ..0 store result score @s wop.validitem run clear @s #worseoldpvp:attackspeed 0
execute if score $oldmethod$ wop.extend matches ..0 if score @s wop.validitem matches 1.. if score @s wop.extend matches 0 run function worseoldpvp:cooldown/determine_new
#effects when holding wopdone in mainhand
execute if score @s wop.mode matches ..1 if entity @s[nbt={SelectedItem:{tag:{wopdone:1}}}] run function worseoldpvp:selected
execute if score @s wop.mode matches 0..1 run function worseoldpvp:sword-block/utility
