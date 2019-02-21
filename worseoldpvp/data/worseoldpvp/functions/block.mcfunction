#replace offhand if empty with invisible carrot_on_a_stick to detect right clicks
replaceitem entity @s[scores={wop.extend=0},nbt=!{Inventory:[{Slot:-106b}]}] weapon.offhand minecraft:carrot_on_a_stick{wopcarrot:1b,Unbreakable:1b,Damage:13}
replaceitem entity @s[scores={wop.extend=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] weapon.offhand minecraft:carrot_on_a_stick{wopcarrot:1b,Unbreakable:1b,Damage:13}
#playsound if hit and if initally blocked
execute if entity @s[scores={wop.extend=0,wop.usecarrot=1..},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run playsound minecraft:item.armor.equip_diamond player @a[distance=..8] ~ ~ ~ 1 2
execute if entity @s[scores={wop.extend=0,wop.usecarrot=1..},nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run playsound minecraft:item.armor.equip_iron player @a[distance=..8] ~ ~ ~ 1 2
execute if entity @s[scores={wop.extend=0,wop.usecarrot=1..},nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run playsound minecraft:item.armor.equip_gold player @a[distance=..8] ~ ~ ~ 1 2
execute if entity @s[scores={wop.extend=0,wop.usecarrot=1..},nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run playsound minecraft:item.armor.equip_generic player @a[distance=..8] ~ ~ ~ 1 2
execute if entity @s[scores={wop.extend=0,wop.usecarrot=1..},nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run playsound minecraft:item.armor.equip_chain player @a[distance=..8] ~ ~ ~ 1 2
execute if entity @s[scores={wop.extend=1..},nbt={HurtTime:9s}] run playsound minecraft:item.shield.block player @a[distance=..8] ~ ~ ~ 1 2
#extends the sword-blocking x ticks and calls the actual blocking function, which replaces offhand with another, more op carrot_on_a_stick
scoreboard players operation @s[scores={wop.usecarrot=1..}] wop.extend = extend wop.extend
execute if entity @s[scores={wop.extend=1..}] run function worseoldpvp:blocking
