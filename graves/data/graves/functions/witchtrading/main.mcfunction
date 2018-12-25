#calling shinigami
execute as @e[tag=wt.shinigami,type=minecraft:witch] at @s run function graves:witchtrading/shinigami
#reallocating the shinigami_wing
execute as @e[tag=wt.shinigami_wing] at @s unless entity @e[tag=wt.shinigami,type=minecraft:witch,distance=..2] run kill @s

#unleashing the shinigami_wing contract
data merge entity @e[type=minecraft:item,limit=1,sort=random,nbt={Item:{id:"minecraft:elytra",Count:1b,tag:{HideFlags:1,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:233217,UUIDMost:736971,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1,Operation:0,UUIDLeast:903708,UUIDMost:932627,Slot:"chest"}],display:{Name:"\"Shinigami Wings [setup]\"",Lore:["wear this and you will be bound to a contract until eternity"]}}}}] {Item:{tag:{display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["wear this and you will be bound to a contract until eternity"]},Enchantments:[{id:projectile_protection,lvl:3},{id:thorns,lvl:2},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}]}}}
tag @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:233217,UUIDMost:736971,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1,Operation:0,UUIDLeast:903708,UUIDMost:932627,Slot:"chest"}],display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["wear this and you will be bound to a contract until eternity"]}}}]}] add wt.P.shinigami_wing
execute as @a[tag=wt.P.shinigami_wing] at @s run function graves:witchtrading/shinigami_wing
