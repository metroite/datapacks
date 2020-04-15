function worseoldpvp:sword-block/remove/trigger
scoreboard players operation @s wop.extend = $cooldown$ wop.extend
tag @s add wop.wasbroken
