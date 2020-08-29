#while blocking
execute unless score @s wop.extend matches 1.. run function worseoldpvp:sword-block/prepare
#extends the sword-blocking by x ticks and calls the actual blocking function, which replaces offhand with another, more blocky carrot_on_a_stick or blocky effects are applied depending on config
scoreboard players operation @s[scores={wop.usecarrot=1..}] wop.extend = $extend$ wop.extend
execute if score @s wop.extend matches 1.. unless entity @s[tag=wop.wasbroken] run function worseoldpvp:sword-block/block/trigger
#pigs don't respond to the carrot_on_a_stick
execute as @e[type=minecraft:pig,tag=!wop.noai,distance=..10] at @s run function worseoldpvp:pigs/noai
