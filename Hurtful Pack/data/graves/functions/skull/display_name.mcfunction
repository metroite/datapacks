#displays name above skulls via CustomName if $display_name$ is at least 1
data modify block 32 0 11 Text2 set value '{"nbt":"ArmorItems[3].tag.SkullOwner.Name","entity":"@e[type=minecraft:armor_stand,limit=1,tag=g.dropskull,tag=g.gdropskull]"}'
data modify entity @s CustomName set from block 32 0 11 Text2
data modify entity @s CustomNameVisible set value 1
