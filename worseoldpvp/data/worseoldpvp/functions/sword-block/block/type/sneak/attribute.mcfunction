#if not enchanted
execute if entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{}]}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] run function worseoldpvp:sword-block/block/type/sneak/noench
#if enchanted
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{}]}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] run function worseoldpvp:sword-block/block/type/sneak/ench
