#lock chests if untrusted
execute if entity @s[scores={sv.chestopened=1..}] run function smartvillage:village/locked-chests/tp_up
#negate creeper explosion
execute as @e[type=minecraft:creeper,distance=..5] run function smartvillage:village/explosion/creeper
#anti-crop-grief
execute if block ~ ~0.1 ~ #smartvillage:crops run effect give @s minecraft:slow_falling 1 0 true
