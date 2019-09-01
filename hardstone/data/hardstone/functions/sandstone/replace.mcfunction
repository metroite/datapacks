#actual replacement
fill ~ ~ ~ ~ ~ ~ minecraft:sand replace #hardstone:air
kill @s
#anti-glitch-through
execute as @a[distance=..0.5,nbt={OnGround:0b}] at @s run tp @s ~ ~1.25 ~
execute as @a[distance=..0.5,nbt={OnGround:1b}] at @s run tp @s ^ ^ ^-1.25
