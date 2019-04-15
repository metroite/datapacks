#if the Shinigami Scroll is dropped near a Shinigami Rem witch
replaceitem entity @s armor.chest minecraft:elytra{display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]},Enchantments:[{id:projectile_protection,lvl:3},{id:thorns,lvl:2},{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],HideFlags:1,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUIDLeast:233217,UUIDMost:736971,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1,Operation:0,UUIDLeast:903708,UUIDMost:932627,Slot:"chest"}],RepairCost:99999999} 1
execute at @e[type=minecraft:item,distance=..6,limit=1,sort=nearest,nbt={Item:{id:"minecraft:paper",Count:1b,tag:{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],RepairCost:99999999,display:{Name:"{\"text\":\"Scroll of Shinigami\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"\\\"Drop this to me and come closer,\"}","{\"text\":\"I will take care of your Shinigami Wings\\\"\"}"]}}}}] run particle minecraft:totem_of_undying ~ ~0.75 ~ 0 0 0 0.2 10 force
kill @e[type=minecraft:item,distance=..6,limit=1,sort=nearest,nbt={Item:{id:"minecraft:paper",Count:1b,tag:{Enchantments:[{id:binding_curse,lvl:1},{id:vanishing_curse,lvl:1}],RepairCost:99999999,display:{Name:"{\"text\":\"Scroll of Shinigami\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"\\\"Drop this to me and come closer,\"}","{\"text\":\"I will take care of your Shinigami Wings\\\"\"}"]}}}}]
execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.1 50 force
advancement grant @s only graves:shinigami_scroll
execute at @s run playsound minecraft:entity.witch.ambient player @a ~ ~ ~ 1 1
execute run playsound minecraft:entity.vex.charge voice @s ~ ~ ~ 2 1.2
execute run playsound minecraft:entity.vex.charge voice @s ~ ~ ~ 2 1.2
execute run playsound minecraft:entity.vex.charge voice @s ~ ~ ~ 2 1.2
execute at @s run playsound mminecraft:entity.villager.yes voice @a ~ ~ ~ 2 1.5
execute at @s run playsound minecraft:entity.bat.loop voice @a ~ ~ ~ 0.5 0.5
