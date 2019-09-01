execute unless entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village] at @e[type=minecraft:villager,limit=1,sort=random] run function smartvillage:village/bell/marker
scoreboard players remove @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter 10
scoreboard players reset @a sv.killvillager
