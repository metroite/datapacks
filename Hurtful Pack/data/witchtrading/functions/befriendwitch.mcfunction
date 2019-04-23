#effects when befriending
tp @s ~ ~ ~ facing entity @p[team=wt.friendly,distance=..6,nbt={SelectedItem:{id:"minecraft:poisonous_potato"}}]
execute if entity @p[nbt={SelectedItem:{id:"minecraft:poisonous_potato"}},team=wt.friendly,distance=..6] run playsound minecraft:entity.villager.trade hostile @a ~ ~ ~ 2 1.5
#Invisible Villager gets spawned
execute if entity @p[nbt={SelectedItem:{id:"minecraft:poisonous_potato"}},team=wt.friendly,distance=..6] run function witchtrading:witches
