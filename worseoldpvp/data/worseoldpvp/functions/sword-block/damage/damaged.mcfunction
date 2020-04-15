playsound minecraft:item.shield.block player @a ~ ~ ~ 1 2
execute unless score $cooldown$ wop.extend matches ..0 run function worseoldpvp:sword-block/damage/break
#further playsounds and reset score, also checks if sword should be broken
function worseoldpvp:sword-block/damage/playsound
#durability calculation (1.14 only)
execute store result score @s wop.damage run data get entity @s SelectedItem.tag.Damage
scoreboard players add @s wop.damage 1
execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get @s wop.damage
#further playsounds and reset score, also checks if sword should be broken
function worseoldpvp:sword-block/damage/durability/check
