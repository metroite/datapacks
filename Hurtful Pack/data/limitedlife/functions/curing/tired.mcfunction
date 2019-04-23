particle minecraft:dripping_water ~ ~1 ~ 0.3 0.3 0.3 1 1 normal
scoreboard players add @s ll.cooking 1
execute at @s[scores={ll.cooking=9999}] run playsound minecraft:ambient.underwater.exit ambient @a[distance=..32] ~ ~ ~ 0.1 0.5
tag @s[scores={ll.cooking=10000..}] remove ll.tired
