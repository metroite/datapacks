#runs every tick
#cancel explosions
execute as @e[type=minecraft:tnt,nbt={Fuse:1s}] at @s unless entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village,tag=sv.hero,tag=sv.named,scores={sv.counter=20..}] run function smartvillage:village/explosion/pre_tnt
execute as @a at @s as @e[type=minecraft:creeper,distance=..5] unless entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village,tag=sv.hero,tag=sv.named,scores={sv.counter=20..}] run function smartvillage:village/explosion/pre_creeper
#lose trust by hitting villagers (expansion to inside.mcfunction)
execute as @a[scores={sv.damagedealt=1..}] at @s if entity @e[distance=..7,type=minecraft:villager,nbt={HurtTime:10s}] run function smartvillage:village/standing/hurt_villager
#lock chests if untrusted
execute as @a[scores={sv.chestopened=1..},tag=sv.entered] at @s unless entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village,tag=sv.hero,tag=sv.named,scores={sv.counter=20..}] run function smartvillage:village/locked-chests/tp_up
