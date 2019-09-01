playsound minecraft:item.shield.block player @a ~ ~ ~ 1 2
scoreboard players add @s wop.damage 1
execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get @s wop.damage
#further playsounds and reset score, also checks if sword should be broken
function worseoldpvp:sword-block/damage/check
