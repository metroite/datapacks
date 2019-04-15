#calling shinigami
execute as @e[tag=wt.shinigami,type=minecraft:witch] at @s run function graves:witchtrading/shinigami
#reallocating the shinigami_wing
execute as @e[tag=wt.shinigami_wing] at @s unless entity @e[tag=wt.shinigami,type=minecraft:witch,distance=..2] run kill @s

#unleashing the shinigami_wing contract
execute as @e[type=minecraft:item,limit=1,sort=random,nbt={Item:{id:"minecraft:elytra",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"Shinigami Wings [setup]\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}}}] at @s run function shinigami_wing_setup
tag @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}}]}] add wt.P.shinigami_wing
tag @e[nbt={ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}},{}]}] add wt.P.shinigami_wing
execute as @e[tag=wt.P.shinigami_wing] at @s run function graves:witchtrading/shinigami_wing
#remove shinigami power
clear @a[nbt=!{FallFlying:1b}] minecraft:firework_rocket{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{Name:"{\"text\":\"Shinigami Power\",\"color\":\"aqua\",\"italic\":\"false\"}",Lore:["{\"text\":\"...fly through the sky until you die\"}"]}}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_rocket",tag:{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{Name:"{\"text\":\"Shinigami Power\",\"color\":\"aqua\",\"italic\":\"false\"}",Lore:["{\"text\":\"...fly through the sky until you die\"}"]}}}}]
#calling shinigami_power upon right click
execute as @e[type=minecraft:firework_rocket,nbt={FireworksItem:{tag:{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{Name:"{\"text\":\"Shinigami Power\",\"color\":\"aqua\",\"italic\":\"false\"}",Lore:["{\"text\":\"...fly through the sky until you die\"}"]}}}}] at @s run function graves:witchtrading/shinigami_power
