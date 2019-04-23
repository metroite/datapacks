playsound minecraft:item.shield.block player @a[distance=..8] ~ ~ ~ 1 2
scoreboard players operation @s wop.damagecalc -= @s wop.health
scoreboard players operation @s wop.damagecalc += 1 wop.damagecalc
scoreboard players operation @s wop.damagecalc += @s wop.damage
execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get @s wop.damagecalc
#further playsounds and reset score, also checks if sword should be broken
function worseoldpvp:sword-block/damage/check
