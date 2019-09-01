#action bar message
title @s actionbar ["",{"text":"Updated village status!"}]
execute unless entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village] run title @s actionbar ["",{"text":"Village has been initialized!"}]
#summon marker area_effect_cloud and takeover scores
execute unless entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village] run function smartvillage:village/bell/marker
#get into survival mode if deserted
execute if score @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter matches 0 run gamemode survival @s[gamemode=adventure]
#raytrace to make particles at the bell
execute positioned ~ ~1.5 ~ run function smartvillage:village/bell/particle/raytrace
#if its deserted, put players back into survival mode
execute if score @s sv.counter matches 0 run gamemode survival @s[gamemode=adventure]
