scoreboard players reset @s ll.cooking
data merge entity @s[tag=!ll.blockeddone] {PickupDelay:20}
tag @s[tag=!ll.blockeddone] add ll.blocked
tag @s[tag=!ll.blockeddone] add ll.blockeddone
tag @s remove ll.healingredient
playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 2 2
particle minecraft:dragon_breath ~ ~-0.75 ~ 0.1 0.1 0.1 0.1 20 force
