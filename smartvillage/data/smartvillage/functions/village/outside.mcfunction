#if leaving
execute if entity @s[tag=sv.entered] run function smartvillage:village/leaving
#reset scores (prevents execution of functions)
scoreboard players reset @a sv.bell_ring
scoreboard players reset @a sv.traded
scoreboard players reset @a sv.damagedealt
scoreboard players reset @a sv.killigolem
scoreboard players reset @a sv.killvillager
scoreboard players reset @a sv.chestopened
#stop multiple calls^^
tag @s add sv.outside
