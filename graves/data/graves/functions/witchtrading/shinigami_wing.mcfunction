#initial effects (would be better if I could specifically take the laughing sound in minecraft:entity.witch.ambient)
execute at @s[tag=!wt.P.shinigami_wing.SU] run playsound minecraft:entity.bat.loop voice @a[distance=..16] ~ ~ ~ 2 0.5
execute at @s[tag=!wt.P.shinigami_wing.SU] run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.5 50 force
tag @s[tag=!wt.P.shinigami_wing.SU] add wt.P.shinigami_wing.SU

#particle effects
execute at @s[nbt={FallFlying:1b}] positioned ^1 ^ ^ run particle minecraft:dust 0.2314 0.2314 0.25098 3 ~ ~1 ~ 0 0 0 0.5 1 force
execute at @s[nbt={FallFlying:1b}] positioned ^-1 ^ ^ run particle minecraft:dust 0.2314 0.2314 0.25098 3 ~ ~1 ~ 0 0 0 0.5 1 force
execute at @s[nbt={FallFlying:0b}] if entity @p[scores={wt.rng=6..11}] positioned ^ ^ ^-0.6 run particle minecraft:dust 0.2314 0.2314 0.25098 3 ~ ~0.7 ~ 0.2 0.4 0.05 0.5 1 force

#calling shinigami_wing_kill: kill if elytra is removed
execute as @s[type=minecraft:player,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Damage:431,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:233217,UUIDMost:736971,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1,Operation:0,UUIDLeast:903708,UUIDMost:932627,Slot:"chest"}],display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["wear this and you will be bound to a contract until eternity"]}}}]}] at @s run function graves:witchtrading/shinigami_wing_kill
execute as @s[type=!minecraft:player,nbt=!{ArmorItems:[{},{},{id:"minecraft:elytra",tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:233217,UUIDMost:736971,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1,Operation:0,UUIDLeast:903708,UUIDMost:932627,Slot:"chest"}],display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["wear this and you will be bound to a contract until eternity"]}}},{}]}] at @s run function graves:witchtrading/shinigami_wing_kill
execute as @s[type=minecraft:player,nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:233217,UUIDMost:736971,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1,Operation:0,UUIDLeast:903708,UUIDMost:932627,Slot:"chest"}],display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["wear this and you will be bound to a contract until eternity"]}}}]}] at @s run function graves:witchtrading/shinigami_wing_kill

#replacing offhand with firework rockets
replaceitem entity @s[scores={wt.rng=1},nbt=!{Inventory:[{Slot:-106b}]},nbt={FallFlying:1b}] weapon.offhand minecraft:firework_rocket{RepairCost:99999999,Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{Name:"\"Shinigami Power\"",Lore:["fly through the sky until you die"]}} 1

#repairing the Shinigami Wing
execute at @s[team=wt.friendly] at @e[tag=wt.shinigami,type=minecraft:witch,distance=..3,limit=1,sort=nearest] if entity @e[type=minecraft:item,distance=..3,limit=1,sort=nearest,nbt={OnGround:1b,Item:{id:"minecraft:paper",Count:1b,tag:{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],RepairCost:99999999,display:{Name:"{\"text\":\"Scroll of Shinigami\",\"color\":\"yellow\",\"italic\":false}",Lore:["\"Drop this to me and come closer,","I will take care of your Shinigami Wings\""]}}}}] run function graves:witchtrading/shinigami_wing_repair
