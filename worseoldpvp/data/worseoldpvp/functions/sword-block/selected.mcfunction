#replace offhand, if empty, with invisible carrot_on_a_stick to detect right clicks
execute if entity @s[scores={wop.extend=0}] run function worseoldpvp:sword-block/reset
#playsound if hit and if initally blocked (also sets wop.damage)
execute if entity @s[scores={wop.extend=0,wop.usecarrot=1..}] run function worseoldpvp:sword-block/init
#extends the sword-blocking by x ticks and calls the actual blocking function, which replaces offhand with another, more blocky carrot_on_a_stick
scoreboard players operation @s[scores={wop.usecarrot=1..}] wop.extend = $extend$ wop.extend
execute if score $attribute$ wop.extend matches 1.. if score $mustsneak$ wop.extend matches 1.. if entity @s[scores={wop.extend=1..}] run function worseoldpvp:sword-block/trigger/attribute_sneak
execute if score $attribute$ wop.extend matches 1.. if score $mustsneak$ wop.extend matches ..0 if entity @s[scores={wop.extend=1..}] run function worseoldpvp:sword-block/trigger/attribute
execute if score $attribute$ wop.extend matches ..0 if entity @s[scores={wop.extend=1..}] run function worseoldpvp:sword-block/trigger/effect
#if SelectedItemSlot changes reset wop.extend
execute store result score @s wop.itemslottemp run data get entity @s SelectedItemSlot
execute unless score @s wop.itemslottemp = @s wop.itemslot run function worseoldpvp:sword-block/sneak/remove_attribute
#pigs don't respond to the carrot_on_a_stick
execute as @e[type=minecraft:pig,tag=!wop.noai,distance=..10] at @s run function worseoldpvp:pigs/noai
