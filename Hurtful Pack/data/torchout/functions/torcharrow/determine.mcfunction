#bow
execute if entity @s[scores={to.ta.shoot=1..}] run function torchout:torcharrow/bow/player
##crossbow
#load and mark
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:torch"}],SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] run function torchout:torcharrow/crossbow/mainhand/player
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}],SelectedItem:{id:"minecraft:torch"}}] run function torchout:torcharrow/crossbow/offhand/player
#shoot detect
execute if entity @s[scores={to.ta.shootc=1..}] run function torchout:torcharrow/crossbow/mainhand/shoot
execute if entity @s[scores={to.ta.shootc=1..},nbt=!{SelectedItem:{id:"minecraft:crossbow"}}] run function torchout:torcharrow/crossbow/offhand/shoot
#reset
scoreboard players remove @s[scores={to.ta.bind=1..}] to.ta.bind 1
scoreboard players reset @s to.ta.shoot
scoreboard players reset @s to.ta.shootc
