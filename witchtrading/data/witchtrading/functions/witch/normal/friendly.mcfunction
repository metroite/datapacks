#initial befriending
execute unless entity @s[team=wt.friendly] at @s run function witchtrading:witch/befriend
#If you trade and take away your potato off of your selected slot because you want to trade that item
execute as @p[distance=..1,team=wt.friendly,scores={wt.ttv=1..},nbt={SelectedItem:{id:"minecraft:poisonous_potato"}}] run function witchtrading:witch/trading
#mark if traded
execute if entity @p[distance=..1,team=wt.friendly,scores={wt.twv=1..}] at @s run function witchtrading:witch/traded
#block if poison potato is unselected and if currently not trading
execute unless entity @s[tag=wt.traded] if entity @p[distance=..1,nbt=!{SelectedItem:{id:"minecraft:poisonous_potato"}}] unless entity @e[type=area_effect_cloud,distance=..1,name=wt.friendly] at @s run function witchtrading:witch/normal/block
