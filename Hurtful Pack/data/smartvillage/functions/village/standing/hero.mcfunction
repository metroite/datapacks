execute unless entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village] at @e[type=minecraft:villager,limit=1,sort=random] run function smartvillage:village/bell/marker
scoreboard players add @e[tag=!sv.hero,distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter 10
tag @e[distance=..110,sort=nearest,limit=1,tag=sv.village] add sv.hero
