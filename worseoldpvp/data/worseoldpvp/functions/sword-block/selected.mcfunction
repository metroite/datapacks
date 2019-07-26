#player has to be defined!
scoreboard players add @s wop.extend 0
#replace offhand if empty with invisible carrot_on_a_stick to detect right clicks
clear @s[scores={wop.extend=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] minecraft:carrot_on_a_stick{wopcarrot:1b,wopblocking:1b}
replaceitem entity @s[scores={wop.extend=0},nbt=!{Inventory:[{Slot:-106b}]}] weapon.offhand minecraft:carrot_on_a_stick{wopcarrot:1b,wopunblock:1b,CustomModelData:27}
#playsound if hit and if initally blocked (also sets wop.damagecalc and wop.damage)
execute if entity @s[scores={wop.extend=0,wop.usecarrot=1..}] run function worseoldpvp:sword-block/init
#extends the sword-blocking by x ticks and calls the actual blocking function, which replaces offhand with another, more op carrot_on_a_stick
scoreboard players operation @s[scores={wop.usecarrot=1..}] wop.extend = $extend$ wop.extend
execute if entity @s[scores={wop.extend=1..}] run function worseoldpvp:sword-block/blocking
#pigs don't respond to the carrot_on_a_stick
execute as @e[type=minecraft:pig,tag=!wop.noai,distance=..10] at @s run function worseoldpvp:pigs/noai
