#data merge @e item
execute unless score mode wop.extend = 1 wop.extend at @a as @e[type=minecraft:item,distance=..4,nbt=!{Item:{tag:{wopdone:1b}}}] run function worseoldpvp:cooldown/no
execute if score mode wop.extend = 1 wop.extend at @a as @e[type=minecraft:item,distance=..4,nbt=!{Item:{tag:{wopdone:1b}}}] run function worseoldpvp:cooldown/yes
#effects when holding wopdone in mainhand
execute as @a[nbt={SelectedItem:{tag:{wopdone:1b}}}] at @s run function worseoldpvp:selected
execute if score mode wop.extend <= 1 wop.extend run function worseoldpvp:sword-block/utility
