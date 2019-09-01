#actual revive process
kill @e[distance=..0.5,limit=1,type=item,nbt={Item:{id:"minecraft:golden_apple"}}]
summon minecraft:lightning_bolt ~ ~ ~
gamemode survival @s
effect give @s minecraft:resistance 1 4
effect give @p minecraft:absorption 10 4
tp @s ~ ~1.1 ~
