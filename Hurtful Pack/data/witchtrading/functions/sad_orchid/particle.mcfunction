#effects
execute as @p[distance=..32] if entity @s[scores={wt.rng=5}] run particle minecraft:dripping_water ~ ~0.1 ~ 0.2 0.2 0.2 1 1 normal
effect give @a[distance=..3] minecraft:luck 2 0 true
