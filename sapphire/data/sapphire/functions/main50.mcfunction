#re-schedule
schedule function sapphire:main50 50t
#feature-compatibility: limitedlife
function limitedlife:sapphire/main
#calling Revoke (therefore make it possible to spawn a new sapphire ore) deep_ocean advancement###
execute as @a[tag=sp.deep_ocean] at @s unless entity @e[type=minecraft:armor_stand,distance=..128,tag=sp.oredrop] unless entity @e[type=minecraft:area_effect_cloud,distance=..128,tag=sp.noore] run function sapphire:generator/revoke_deep_ocean
