tag @s add wt.g.checked
execute if entity @s[nbt={Item:{id:"minecraft:elytra",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"Shinigami Wings [setup]\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}}}] run function graves:witchtrading/shinigami/wing/item_success
