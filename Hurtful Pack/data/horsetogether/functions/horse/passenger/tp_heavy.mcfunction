tp @s ~ ~ ~ facing entity @p[distance=..8]
#alignment fix on slabs for example (flat: 0.85725, slab-far: 1.3565, slab-close:)
execute at @s unless entity @e[type=minecraft:horse,distance=..1.3,limit=1,sort=nearest,tag=ht.armored] run tp @s ~ ~-0.568 ~
execute at @s if entity @e[type=minecraft:horse,distance=..0.625,limit=1,sort=nearest,tag=ht.armored] run tp @s ~ ~0.45 ~
