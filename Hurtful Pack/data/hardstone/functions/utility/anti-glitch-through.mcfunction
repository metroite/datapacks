#anti-glitch-through
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @a[distance=..0.9,nbt={OnGround:0b}] at @s run tp @s ~ ~0.2 ~
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @a[distance=..0.9,nbt={OnGround:1b}] at @s run tp @s ^ ^ ^-0.2
