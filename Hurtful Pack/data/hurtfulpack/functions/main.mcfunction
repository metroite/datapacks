#uninstall
execute if entity @p[tag=hurtful.sad] run function hurtfulpack:uninstall/uninstall
#all other datapacks if not uninstalling
execute unless entity @p[tag=hurtful.sad] run function hurtfulpack:tick
