#if entering
execute if entity @s[tag=!sv.entered] run function smartvillage:village/entering
#if bell is being run: display name of the village or create the area_effect_cloud
execute if score @s sv.bell_ring matches 1.. run function smartvillage:village/bell/ring
#standing calculation
execute if entity @s[nbt={ActiveEffects:[{Id:32b}]}] run function smartvillage:village/standing/hero
execute if score @s sv.traded matches 1.. run function smartvillage:village/standing/traded
execute if score @s sv.killvillager matches 1.. run function smartvillage:village/standing/killed_villager
execute if score @s sv.killigolem matches 1.. run function smartvillage:village/standing/killed_iron_golem
execute unless score $threshold$ sv.global matches 1 as @e[distance=..110,sort=nearest,limit=1,tag=sv.village] run function smartvillage:village/standing/unpresence
#if village is hostile replace villagers with pillagers
execute if score @e[distance=..110,sort=nearest,limit=1,tag=sv.village] sv.counter matches ..-20 as @e[distance=..30,limit=1,sort=random,tag=!sv.replacefail] at @s run function smartvillage:village/standing/hostile/tick
#enable trigger "stuck in village"
execute if entity @s[gamemode=adventure] unless entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village,tag=sv.hero,tag=sv.named,scores={sv.counter=20..}] run function smartvillage:village/adventure_mode/tick
