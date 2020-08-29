#effects when holding sword in mainhand
execute if score @s wop.mode matches 0..1 if predicate worseoldpvp:holding_sword run function worseoldpvp:sword-block/mustsneak
#sword blocking utility (like scoreboard handling)
execute if score @s wop.mode matches 0..1 run function worseoldpvp:sword-block/utility
#nerf axes onto 1.8 default values
execute if score @s wop.mode matches 0..2 unless score @s wop.mode matches 1 unless entity @s[tag=wop.holdaxe] if predicate worseoldpvp:holding_axe run function worseoldpvp:axes/nerf
#tick if selected
execute if score @s wop.mode matches 0..2 unless score @s wop.mode matches 1 if entity @s[tag=wop.holdaxe] run function worseoldpvp:axes/selected
