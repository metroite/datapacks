#Witches get moved into the same team as the player
team join wt.friendly @s
team join wt.friendly @p[distance=..6,tag=wt.poisonpotato]
#effects when befriending
tp @s ~ ~ ~ facing entity @p[tag=wt.poisonpotato]
playsound minecraft:entity.villager.trade hostile @a ~ ~ ~ 2 1.5
#Invisible Villager gets spawned
function witchtrading:witch/witches
