#summon v.fan in observer
execute positioned ~ ~-1 ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["v.fan","v.fansetup","metroite.placement","metroite.place"]}
execute positioned ~ ~1 ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["v.fan","v.fansetup","metroite.placement","metroite.place"]}
execute positioned ~ ~ ~1 unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["v.fan","v.fansetup","metroite.placement","metroite.place"]}
execute positioned ~ ~ ~-1 unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["v.fan","v.fansetup","metroite.placement","metroite.place"]}
execute positioned ~1 ~ ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["v.fan","v.fansetup","metroite.placement","metroite.place"]}
execute positioned ~-1 ~ ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["v.fan","v.fansetup","metroite.placement","metroite.place"]}

#invalid placement will give the item back
execute unless entity @e[limit=1,sort=nearest,distance=..1.25,tag=metroite.place,tag=metroite.placement] run give @p[distance=..6] minecraft:bat_spawn_egg{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"},EntityTag:{Tags:["ll.spawnbat"],id:"minecraft:item",Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}}}}} 1

#setup v.fan
execute as @e[tag=v.fan,tag=v.fansetup,limit=1,sort=nearest] at @s run function ventilators:ventilator_facing

#kill item
kill @s
