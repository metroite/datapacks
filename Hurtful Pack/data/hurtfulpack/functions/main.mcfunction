#uninstall
execute if entity @p[tag=hurtful.sad] run function hurtfulpack:uninstall/uninstall
#all other datapacks if not uninstalling
execute unless entity @p[tag=hurtful.sad] run function hurtfulpack:tick
#nether functions
execute as @a[nbt={Dimension:-1}] at @s run function hurtfulpack:nether/tick
#replace healing stew effect with levitation
execute as @a[scores={hp.suspstew=1..},nbt={ActiveEffects:[{Ambient:0b,ShowIcon:1b,ShowParticles:1b,Duration:160,Id:10b,Amplifier:0b}]}] run function hurtfulpack:no-healing-stew/replace
#no free leashes from wandering traders
execute as @e[type=minecraft:wandering_trader] unless entity @s[scores={hp.leadcount=2..}] at @s as @e[distance=..12,type=minecraft:item,nbt={Item:{id:"minecraft:lead",Count:1b}}] run function hurtfulpack:no-free-leashes/wandering_trader
