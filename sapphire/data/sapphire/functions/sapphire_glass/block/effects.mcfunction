#calling cleanup when sapphire_glass is destroyed
execute unless block ~ ~ ~ minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/block/cleanup/determine
#PISTON DUPE GLITCH - side effect: light_blue_stained_glass cannot be placed next to sapphire_glass
function sapphire:sapphire_glass/block/close_glass
#remove SU-tag
tag @s remove metroite.placement
