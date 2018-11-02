
execute unless entity @p[team=wt.friendly,distance=..6] unless entity @p[scores={wt.witchtrading.ttv=1..}] run tp @s ~ -500 ~
execute unless entity @e[team=wt.friendly,distance=..1,tag=!wt.blocked] run tp @s ~ -500 ~
execute as @s[nbt={Silent:1b,Offers:{Recipes:[{rewardExp:1b,maxUses:1,uses:1,buy:{id:"minecraft:poisonous_potato",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"Mysterious Potion\",\"color\":\"light_purple\"}"},Potion:"minecraft:water",CustomPotionColor:0}}}]}}] run tag @e[team=wt.friendly,tag=!wt.traded,tag=!wt.blocked,type=minecraft:witch] add wt.traded
