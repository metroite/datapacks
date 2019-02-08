#kill too many SU-entities (entities that were summoned all at once, the prevention feature inside of the placement-API can't take this into account: fix might be needed (look at graves:usebonemeal/main for possible solution))
execute as @s[tag=sp.sapphire_glasssetup] run kill @e[tag=sp.sapphire_glasssetup,distance=0.5..3]
#calling cleanup when sapphire_glass is destroyed
execute unless block ~ ~ ~ minecraft:light_blue_stained_glass run function limitedlife:sapphire/sapphire_glass/cleanup
scoreboard players set @a sp.glass_broken 0
#effects
scoreboard players add @s[tag=!sp.sapphire_glasssetup] sp.glass_placed 1
execute at @s[tag=!sp.sapphire_glasssetup,scores={sp.glass_placed=5}] run particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.15 0.15 0.15 0.05 1
scoreboard players set @s[scores={sp.glass_placed=10..}] sp.glass_placed 0
execute as @a[distance=..0.5,nbt={OnGround:0b}] at @s run tp @s ~ ~1.25 ~
execute as @a[distance=..0.5,nbt={OnGround:1b}] at @s run tp @s ^ ^ ^-1.25
#remove SU-tag
tag @s remove sp.sapphire_glasssetup
tag @s remove metroite.placement
