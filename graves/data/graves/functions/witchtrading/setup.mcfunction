#allow more witches
execute if score $rngmax$ wt.rng matches 15 run scoreboard players add $rngmax$ wt.rng 1
scoreboard objectives add wt.shootc minecraft.used:minecraft.crossbow
scoreboard objectives add wt.shinigami dummy
scoreboard objectives add wt.shinigamipw minecraft.used:minecraft.firework_rocket
#scheduled functions
schedule function graves:witchtrading/main100 27t
