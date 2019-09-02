#runs every tick
#negate tnt explosion
execute as @e[type=minecraft:tnt,nbt={Fuse:1s}] at @s if entity @e[tag=sv.marked,distance=..110] unless entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village,tag=sv.hero,tag=sv.named,scores={sv.counter=20..}] run function smartvillage:village/explosion/pre_tnt
#lose trust by hitting villagers (expansion to inside.mcfunction)
execute as @a[scores={sv.damagedealt=1..}] at @s if entity @e[distance=..7,type=minecraft:villager,nbt={HurtTime:10s}] run function smartvillage:village/standing/hurt_villager
#tick if inside village
execute as @a[gamemode=!creative,tag=sv.entered,tag=!sv.trusted] at @s run function smartvillage:village/inside_tick
