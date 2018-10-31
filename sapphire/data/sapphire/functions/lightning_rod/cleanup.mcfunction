playsound minecraft:entity.lightning_bolt.impact block @a[distance=..16] ~ ~ ~ 1 2
data merge entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:redstone_torch"}}] {Item:{id:"minecraft:armor_stand",Count:1b,tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],EntityTag:{Tags:["sp.lightning_rod","sp.valid"]},display:{Name:"{\"text\":\"Lightning Rod\",\"color\":\"yellow\",\"italic\":false}"}}}}
kill @s
