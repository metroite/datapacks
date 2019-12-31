playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1
replaceitem entity @s weapon.mainhand minecraft:air 1
scoreboard players operation @s to.damage = $uses$ to.damage
particle minecraft:item minecraft:flint_and_steel ^ ^-0.25 ^0.5 0.05 0.05 0.05 0.05 5
