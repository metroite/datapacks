#if not enchanted
execute unless entity @s[nbt={Inventory:[{tag:{wopnoench:1b}}]}] if entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{}]}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] run function worseoldpvp:sword-block/block/type/nosneak/noench
#if enchanted
execute unless entity @s[nbt={Inventory:[{tag:{wopench:1b}}]}] if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{}]}}},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] run function worseoldpvp:sword-block/block/type/nosneak/ench
