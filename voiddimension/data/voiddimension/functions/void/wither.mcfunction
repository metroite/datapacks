#exit void if player is about to die due to the wither effect
effect give @s minecraft:resistance 5 4 true
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 0
particle large_smoke ~ ~1 ~ 0.25 0.5 0.25 0.025 100 normal
function voiddimension:rift/exit
