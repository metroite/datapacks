execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get @s to.damage
execute if entity @s[scores={to.damage=64..}] run playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1
execute if entity @s[scores={to.damage=64..}] run replaceitem entity @s weapon.mainhand minecraft:air 1
scoreboard players set @s to.damage 0
