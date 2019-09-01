summon minecraft:pillager ~ ~ ~
execute as @e[type=minecraft:pillager,limit=1,sort=nearest] run function smartvillage:village/standing/hostile/takeover
tag @s add sv.replace
schedule function smartvillage:village/standing/hostile/replace_core 2t
function smartvillage:village/standing/hostile/effects
