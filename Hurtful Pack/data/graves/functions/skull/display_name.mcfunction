#displays name above skulls via CustomName if $display_name$ is at least 1
data modify block 32 1 11 Text1 set value '{"nbt":"ArmorItems[3].tag.SkullOwner.Name","entity":"@e[tag=g.dropskull,tag=g.gdropskull,limit=1]"}'
data modify entity @s CustomName set from block 32 1 11 Text1
data modify entity @s CustomNameVisible set value 1
