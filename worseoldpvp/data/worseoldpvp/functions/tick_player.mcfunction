#effects when holding sword in mainhand
execute if score @s wop.mode matches 0..1 if predicate worseoldpvp:holding_sword run function worseoldpvp:sword-block/mustsneak
#sword blocking utility (like scoreboard handling)
execute if score @s wop.mode matches 0..1 run function worseoldpvp:sword-block/utility
