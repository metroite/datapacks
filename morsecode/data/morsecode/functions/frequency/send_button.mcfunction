#determine frequency
execute store result score @s mc.itemrotation run data get entity @s ItemRotation
#powering corresponding receiver
execute if entity @s[scores={mc.itemrotation=0..}] if entity @e[type=minecraft:item_frame,limit=1,tag=mc.receiver] run function morsecode:frequency/trigger
#call mobile_receiver and determine its frequency
execute if entity @s[scores={mc.itemrotation=0..}] run function morsecode:mobile_receiver/trigger
#Replaces powered button with unpowered stone_button
function morsecode:device/sender/reset_button
