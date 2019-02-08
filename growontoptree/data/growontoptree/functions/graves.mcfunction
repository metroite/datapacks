#giant trees push players up while growing
execute positioned ~ ~1 ~ as @a[distance=..3] at @s run tp @s ~ ~1 ~
execute positioned ~ ~1 ~ as @a[distance=..3] run effect give @s minecraft:levitation 1 0 true
execute positioned ~ ~1 ~ as @a[distance=..3] run effect give @s minecraft:slow_falling 3 0 true
