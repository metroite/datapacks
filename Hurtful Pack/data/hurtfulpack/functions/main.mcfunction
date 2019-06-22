#uninstall
execute if entity @p[tag=hurtful.sad] run function hurtfulpack:uninstall/uninstall
#all other datapacks if not uninstalling
execute unless entity @p[tag=hurtful.sad] run function hurtfulpack:tick
#no-nether-water-cauldron if in nether
execute as @a[scores={hp.cauldron=1..},nbt={Dimension:-1}] at @s run function hurtfulpack:no-nether-water-cauldron/fill
