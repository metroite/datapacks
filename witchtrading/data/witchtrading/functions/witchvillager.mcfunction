execute unless entity @p[team=wt.friendly,distance=..6] unless entity @p[scores={wt.witchtrading.ttv=1..}] run tp @s ~ -500 ~
execute unless entity @e[team=wt.friendly,distance=..1,tag=!wt.blocked] run tp @s ~ -500 ~
execute if entity @p[team=wt.friendly,scores={wt.twv=1..},limit=1,sort=nearest] run tag @e[team=wt.friendly,tag=!wt.traded,tag=!wt.blocked,type=minecraft:witch,limit=1,sort=nearest] add wt.traded
