#determine frequency
execute as @e[type=minecraft:item_frame,tag=mc.receiver] store result score @s mc.itemrotation run data get entity @s ItemRotation
#powering corresponding receiver
execute if entity @s[scores={mc.itemrotation=0}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=0},tag=mc.receiver] run function morsecode:frequency/success
execute if entity @s[scores={mc.itemrotation=1}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=1},tag=mc.receiver] run function morsecode:frequency/success
execute if entity @s[scores={mc.itemrotation=2}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=2},tag=mc.receiver] run function morsecode:frequency/success
execute if entity @s[scores={mc.itemrotation=3}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=3},tag=mc.receiver] run function morsecode:frequency/success
execute if entity @s[scores={mc.itemrotation=4}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=4},tag=mc.receiver] run function morsecode:frequency/success
execute if entity @s[scores={mc.itemrotation=5}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=5},tag=mc.receiver] run function morsecode:frequency/success
execute if entity @s[scores={mc.itemrotation=6}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=6},tag=mc.receiver] run function morsecode:frequency/success
execute if entity @s[scores={mc.itemrotation=7}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=7},tag=mc.receiver] run function morsecode:frequency/success
