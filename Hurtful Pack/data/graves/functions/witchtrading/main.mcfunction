#calling shinigami
execute as @e[type=minecraft:witch,tag=wt.shinigami] at @s run function graves:witchtrading/shinigami/witch

#unleashing the shinigami_wing contract
execute as @e[type=minecraft:item,limit=1,sort=random,nbt={Item:{id:"minecraft:elytra",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"Shinigami Wings [setup]\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}}}] at @s run function graves:witchtrading/shinigami/wing/item_setup
#ticking entities
execute as @e[type=armor_stand,tag=wt.P.shinigami_wing] at @s run function graves:witchtrading/shinigami/wing/armor_stand_tick
execute as @a[tag=wt.P.shinigami_wing] at @s run function graves:witchtrading/shinigami/wing/player_tick
#reset
scoreboard players reset @a wt.shootc
scoreboard players reset @a wt.shinigamipw
