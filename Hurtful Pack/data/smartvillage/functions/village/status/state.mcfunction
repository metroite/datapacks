#makes sure that it has a score
scoreboard players add @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter 0
#calculate state and default state (could possibly be a random value from -15 to 15 or something)
execute store result score @s sv.counter run execute if entity @e[type=minecraft:villager,distance=..110]
execute if score @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter matches ..-20 store result score @s sv.counter run execute if entity @e[tag=sv.marked,distance=..110]
#display state
execute at @e[distance=..110,sort=nearest,limit=1,tag=sv.village] if score @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter matches 10.. run function smartvillage:village/status/friendly
execute at @e[distance=..110,sort=nearest,limit=1,tag=sv.village] if score @e[distance=..110,sort=nearest,limit=1,tag=sv.village,tag=sv.hero,tag=sv.named] sv.counter matches 20.. run function smartvillage:village/status/trustful
execute at @e[distance=..110,sort=nearest,limit=1,tag=sv.village] if score @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter matches -9..9 run function smartvillage:village/status/neutral
execute at @e[distance=..110,sort=nearest,limit=1,tag=sv.village] if score @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter matches -19..-10 run function smartvillage:village/status/unfriendly
execute at @e[distance=..110,sort=nearest,limit=1,tag=sv.village] if score @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter matches ..-20 run function smartvillage:village/status/hostile
#if no marker is present
execute unless entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village] run function smartvillage:village/status/unknown
#overwrite all others if in raid
execute if score @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter matches -19.. at @e[distance=..110,sort=nearest,limit=1,type=villager] if entity @e[type=pillager,distance=..110] run function smartvillage:village/status/inraid
execute if score @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter matches -19.. at @e[distance=..110,sort=nearest,limit=1,type=villager] if entity @e[type=vindicator,distance=..110] run function smartvillage:village/status/inraid
execute if score @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter matches -19.. at @e[distance=..110,sort=nearest,limit=1,type=villager] if entity @e[type=ravager,distance=..110] run function smartvillage:village/status/inraid
execute if score @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter matches -19.. at @e[distance=..110,sort=nearest,limit=1,type=villager] if entity @e[type=evoker,distance=..110] run function smartvillage:village/status/inraid
