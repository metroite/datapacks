#re-schedule
schedule function graves:witchtrading/main100 100t
#killing the shinigami_wing visuals##
execute as @e[type=minecraft:armor_stand,tag=wt.shinigami_wing] at @s unless entity @e[type=minecraft:witch,distance=..5,tag=wt.shinigami] run kill @s
#tagging if its worn##
tag @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}}]}] add wt.P.shinigami_wing
tag @e[type=minecraft:armor_stand,nbt={ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}},{}]}] add wt.P.shinigami_wing
#just removing it if in creative##
execute as @a[tag=wt.P.shinigami_wing,nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}}]}] at @s run function graves:witchtrading/shinigami/wing/player_tick100
