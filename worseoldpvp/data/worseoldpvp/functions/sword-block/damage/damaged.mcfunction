playsound minecraft:item.shield.block player @a ~ ~ ~ 1 2
execute unless score $cooldown$ wop.extend matches ..0 run function worseoldpvp:sword-block/damage/break
#further playsounds and reset score, also checks if sword should be broken
function worseoldpvp:sword-block/damage/playsound
