clear @a[nbt=!{Inventory:[{Slot:-106b}]}] minecraft:carrot_on_a_stick{wopcarrot:1b}
#data merge @e item
execute unless score $mode$ wop.extend = 1 wop.extend at @a as @e[type=minecraft:item,distance=..4,nbt=!{Item:{tag:{wopcooldown:0b}}}] run function worseoldpvp:cooldown/no
execute if score $mode$ wop.extend = 1 wop.extend at @a as @e[type=minecraft:item,distance=..4,nbt=!{Item:{tag:{wopcooldown:1b}}}] run function worseoldpvp:cooldown/yes
#effects when holding wopdone in mainhand
execute as @a[nbt={SelectedItem:{tag:{wopdone:1b}}}] at @s run function worseoldpvp:selected
execute if score $mode$ wop.extend <= 1 wop.extend run function worseoldpvp:sword-block/utility
#pigs should get their AI back
execute as @e[type=minecraft:pig,tag=wop.noai] at @s run function worseoldpvp:pigs/ai
