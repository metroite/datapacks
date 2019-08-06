#players have to be defined!
scoreboard players add @s wop.extend 0
#replace offhand if empty with invisible carrot_on_a_stick to detect right clicks (new method: also reverts the texture, the new methods is called in other selected function)
execute if score $oldmethod$ wop.extend matches 1.. if entity @s[scores={wop.extend=0}] run function worseoldpvp:sword-block/reset
#playsound if hit and if initally blocked (also sets wop.damagecalc and wop.damage)
execute if entity @s[scores={wop.extend=0,wop.usecarrot=1..}] run function worseoldpvp:sword-block/init
#extends the sword-blocking by x ticks and calls the actual blocking function, which replaces offhand with another, more op carrot_on_a_stick (or which just /data modifies the item (_cmd - new method))
scoreboard players operation @s[scores={wop.usecarrot=1..}] wop.extend = $extend$ wop.extend
execute if score $oldmethod$ wop.extend matches 1.. if entity @s[scores={wop.extend=1..}] run function worseoldpvp:sword-block/blocking
execute if score $oldmethod$ wop.extend matches ..0 if entity @s[scores={wop.extend=1..}] run function worseoldpvp:sword-block/blocking_new
#pigs don't respond to the carrot_on_a_stick
execute as @e[type=minecraft:pig,tag=!wop.noai,distance=..10] at @s run function worseoldpvp:pigs/noai
