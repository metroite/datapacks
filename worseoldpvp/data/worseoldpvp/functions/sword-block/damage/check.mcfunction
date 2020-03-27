function worseoldpvp:sword-block/init
execute if entity @s[scores={wop.damage=1561..},nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run function worseoldpvp:sword-block/damage/break
execute if entity @s[scores={wop.damage=250..},nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run function worseoldpvp:sword-block/damage/break
execute if entity @s[scores={wop.damage=32..},nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run function worseoldpvp:sword-block/damage/break
execute if entity @s[scores={wop.damage=59..},nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run function worseoldpvp:sword-block/damage/break
execute if entity @s[scores={wop.damage=131..},nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run function worseoldpvp:sword-block/damage/break
