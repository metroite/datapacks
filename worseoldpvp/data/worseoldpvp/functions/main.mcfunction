#remove the carrot_on_a_sticks
execute if score $mustsneak$ wop.extend matches 1.. as @a unless entity @s[scores={wop.sneaking=1..}] run function worseoldpvp:sword-block/clear_carrot
execute as @a[nbt=!{SelectedItem:{tag:{wopsword:1}}}] run function worseoldpvp:sword-block/clear_carrot
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}}]
#sets mode of all players not in a mode to default $mode$ (has to be seperated)
execute as @a unless score @s wop.mode matches -1..2 run scoreboard players operation @s wop.mode = $mode$ wop.mode
#tick for valid players
execute unless score $mode$ wop.mode matches -1 as @a[tag=!wop.no,scores={wop.mode=0..2}] at @s run function worseoldpvp:tick_player
#pigs AI handling (because of carrot_on_a_stick as right click detector)
execute as @e[type=minecraft:pig,tag=wop.noai,tag=!wop.no] at @s run function worseoldpvp:pigs/determine
