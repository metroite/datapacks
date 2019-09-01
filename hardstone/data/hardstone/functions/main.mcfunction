#silk touch slows down mining speed
execute as @a[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] run function hardstone:utility/silk_touch
#replace blocks (harden)
execute as @a[nbt=!{SelectedItem:{id:"minecraft:golden_pickaxe"}},nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}},gamemode=!creative] at @s run function hardstone:utility/determine
