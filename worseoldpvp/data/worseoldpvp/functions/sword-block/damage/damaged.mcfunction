playsound minecraft:item.shield.block player @a ~ ~ ~ 1 2
execute unless score $cooldown$ wop.extend matches ..0 run function worseoldpvp:sword-block/damage/break
#playsound depending on sword type
function worseoldpvp:sword-block/damage/playsound
