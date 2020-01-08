#If you hit the witch/villager
execute if entity @e[type=minecraft:villager,distance=..2,team=wt.friendly,nbt={HurtTime:10s}] run function witchtrading:witch/normal/block
execute if entity @s[nbt={HurtTime:10s}] run function witchtrading:witch/normal/block
#Invisible villager
tp @e[type=minecraft:villager,distance=..2,limit=1,sort=nearest,team=wt.friendly] ^ ^ ^0.2
