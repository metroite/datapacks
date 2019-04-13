execute store result score @s to.damage run data get entity @s SelectedItem.tag.Damage
scoreboard players add @s to.damage 1
execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get @s to.damage
execute if entity @s[scores={to.damage=64..},nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run playsound minecraft:entity.item.break player @a[distance=..16] ~ ~ ~ 1 1
execute if entity @s[scores={to.damage=64..},nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run replaceitem entity @s weapon.mainhand minecraft:air 1
tellraw @s[scores={to.damage=..1}] ["",{"text":"error#7:","bold":true,"color":"red","hoverEvent":{"action":"show_text","value":"torchout\\torch\\damage"}},{"text":" flint_and_steel","italic":true,"color":"aqua"},{"text":" is undamaged, damage it first by igniting anything (in other words: using it)."}]
