#re-schedule
schedule function worseoldpvp:main9 9t
#kill carrot_on_a_sticks
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}}]
#pigs AI handling (because of carrot_on_a_stick as right click detector)
execute as @e[type=minecraft:pig,tag=wop.noai,tag=!wop.no] at @s run function worseoldpvp:pigs/determine
