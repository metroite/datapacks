#initial effects (would be better if I could specifically take the laughing sound in minecraft:entity.witch.ambient)
execute as @s[tag=!wt.P.shinigami_wing.SU] at @s run function graves:witchtrading/shinigami_wing_init

#particle effects
execute at @s[nbt={FallFlying:1b}] anchored eyes run particle minecraft:dust 0.2314 0.2314 0.25098 3 ^1 ^ ^1 0 0 0 0.5 1 force
execute at @s[nbt={FallFlying:1b}] anchored eyes run particle minecraft:dust 0.2314 0.2314 0.25098 3 ^-1 ^ ^1 0 0 0 0.5 1 force
execute at @s[nbt={FallFlying:0b}] if entity @p[scores={wt.rng=6..11}] positioned ^ ^ ^-0.6 run particle minecraft:dust 0.2314 0.2314 0.25098 3 ~ ~0.7 ~ 0.2 0.4 0.05 0.5 1 force

#calling shinigami_wing_kill: kill if elytra is removed
execute as @s[type=minecraft:player,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Damage:431,display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}}]}] at @s run function graves:witchtrading/shinigami_wing_kill
execute as @s[type=!minecraft:player,nbt=!{ArmorItems:[{},{},{id:"minecraft:elytra",tag:{display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}},{}]}] at @s run function graves:witchtrading/shinigami_wing_kill
#just removing it (in creative)
execute as @s[type=minecraft:player,nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}}]}] at @s run tag @s remove wt.P.shinigami_wing
execute as @s[type=minecraft:player,nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}}]}] at @s run tag @s remove wt.P.shinigami_wing.SU

#replacing offhand with firework rockets
clear @s[nbt=!{Inventory:[{Slot:-106b}]}] minecraft:firework_rocket{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{Name:"{\"text\":\"Shinigami Power\",\"color\":\"aqua\",\"italic\":\"false\"}",Lore:["{\"text\":\"...fly through the sky until you die\"}"]}}
clear @s[nbt=!{FallFlying:1b}] minecraft:firework_rocket{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{Name:"{\"text\":\"Shinigami Power\",\"color\":\"aqua\",\"italic\":\"false\"}",Lore:["{\"text\":\"...fly through the sky until you die\"}"]}}
replaceitem entity @s[scores={wt.rng=1},nbt=!{Inventory:[{Slot:-106b}]},nbt={FallFlying:1b}] weapon.offhand minecraft:firework_rocket{Fireworks:{Flight:2b,Explosions:[{Type:4,Colors:[I;0]}]},RepairCost:99999999,Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],display:{Name:"{\"text\":\"Shinigami Power\",\"color\":\"aqua\",\"italic\":\"false\"}",Lore:["{\"text\":\"...fly through the sky until you die\"}"]}} 1

#repairing the Shinigami Wing
execute at @s[team=wt.friendly] at @e[tag=wt.shinigami,type=minecraft:witch,distance=..3,limit=1,sort=nearest] if entity @e[type=minecraft:item,distance=..3,limit=1,sort=nearest,nbt={OnGround:1b,Item:{id:"minecraft:paper",Count:1b,tag:{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],RepairCost:99999999,display:{Name:"{\"text\":\"Scroll of Shinigami\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"\\\"Drop this to me and come closer,\"}","{\"text\":\"I will take care of your Shinigami Wings\\\"\"}"]}}}}] run function graves:witchtrading/shinigami_wing_repair
