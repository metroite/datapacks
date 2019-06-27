#remove the carrot_on_a_sticks
clear @a[nbt=!{Inventory:[{Slot:-106b}]}] minecraft:carrot_on_a_stick{wopcarrot:1b}
#data merge @e item
execute unless score $mode$ wop.extend matches 1 at @a[tag=!wop.no] as @e[type=minecraft:item,distance=..4,nbt=!{Item:{tag:{wopcooldown:0b}}},tag=!wop.no] run function worseoldpvp:cooldown/no
execute if score $mode$ wop.extend matches 1 at @a[tag=!wop.no] as @e[type=minecraft:item,distance=..4,nbt=!{Item:{tag:{wopcooldown:1b}}},tag=!wop.no] run function worseoldpvp:cooldown/yes
#effects when holding wopdone in mainhand
execute as @a[nbt={SelectedItem:{tag:{wopdone:1b}}},tag=!wop.no] at @s run function worseoldpvp:selected
execute if score $mode$ wop.extend matches ..1 as @a run function worseoldpvp:sword-block/utility
#pigs should get their AI back
execute as @e[type=minecraft:pig,tag=wop.noai,tag=!wop.no] at @s run function worseoldpvp:pigs/ai
