#initial effects (would be better if I could specifically take the laughing sound in minecraft:entity.witch.ambient)
execute at @s[tag=!wt.P.shinigami_wing.SU] run playsound minecraft:entity.bat.loop voice @s ~ ~ ~ 2 0.5
tag @s[tag=!wt.P.shinigami_wing.SU] add wt.P.shinigami_wing.SU

#particle effects
execute at @s[nbt={FallFlying:1b}] positioned ^1 ^ ^ run particle minecraft:dust 0.2314 0.2314 0.25098 3 ~ ~1 ~ 0 0 0 0.5 1 force
execute at @s[nbt={FallFlying:1b}] positioned ^-1 ^ ^ run particle minecraft:dust 0.2314 0.2314 0.25098 3 ~ ~1 ~ 0 0 0 0.5 1 force
execute at @s[nbt={FallFlying:0b},scores={wt.rng=6..11}] positioned ^ ^ ^-0.6 run particle minecraft:dust 0.2314 0.2314 0.25098 3 ~ ~0.7 ~ 0.2 0.4 0.05 0.5 1 force

#calling shinigami_wing_kill: kill if elytra is removed
execute as @a[nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:233217,UUIDMost:736971,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1,Operation:0,UUIDLeast:903708,UUIDMost:932627,Slot:"chest"}],display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["wear this and you will be bound to a contract until eternity"]}}}]}] at @s run function graves:witchtrading/shinigami_wing_kill
