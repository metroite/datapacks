tag @s remove g.usebonemeal
#further grass related mealing
execute if entity @s[scores={g.usebonemeal=1..}] run function graves:usebonemeal/tall_grass
#advancement granting
execute if entity @s[scores={g.usebonemeal=1..}] run advancement grant @s only graves:use_skull_dust
#placement (recursive)
execute if entity @s[scores={g.usebonemeal=1..}] positioned ~ ~1.5 ~ run function graves:usebonemeal/placement/1
