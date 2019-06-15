execute if entity @s[scores={ll.cooking=2700..2705}] run particle minecraft:dragon_breath ~ ~1.5 ~ 0.1 0.1 0.1 0.75 60 force
execute if entity @s[scores={ll.cooking=2700..2705}] run playsound minecraft:block.conduit.ambient ambient @a ~ ~ ~ 2 0.7
execute if entity @s[scores={ll.cooking=2800..2805}] run particle minecraft:dragon_breath ~ ~1.5 ~ 0.1 0.1 0.1 0.75 60 force
execute if entity @s[scores={ll.cooking=2800..2805}] run playsound minecraft:block.conduit.ambient ambient @a ~ ~ ~ 2 0.7
execute if entity @s[scores={ll.cooking=2900..2905}] run particle minecraft:dragon_breath ~ ~1.5 ~ 0.1 0.1 0.1 0.75 60 force
execute if entity @s[scores={ll.cooking=2900..2905}] run playsound minecraft:block.conduit.ambient ambient @a ~ ~ ~ 2 0.7
execute if entity @s[scores={ll.cooking=2997..3000}] run particle minecraft:dragon_breath ~ ~1.5 ~ 0.1 0.1 0.1 1 30 force
execute if entity @s[scores={ll.cooking=2997..3000}] run playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 2 0.7
execute if entity @s[scores={ll.cooking=2997..3000}] run effect give @p[tag=ll.bat,distance=..48,scores={ll.deaths=1..}] minecraft:nausea 10 2 true
#particles and sound effects in The Void if bat is still alive
execute if entity @s[scores={ll.cooking=2700..2705}] as @a[scores={ll.deaths=10},limit=1,sort=random] at @s run particle minecraft:dragon_breath ~ ~2 ~ 0.1 0.1 0.1 0.75 60 force
execute if entity @s[scores={ll.cooking=2700..2705}] as @a[scores={ll.deaths=10},limit=1,sort=random] at @s run playsound minecraft:block.conduit.ambient ambient @a[distance=..5] ~ ~ ~ 2 0.7
execute if entity @s[scores={ll.cooking=2800..2805}] as @a[scores={ll.deaths=10},limit=1,sort=random] at @s run particle minecraft:dragon_breath ~ ~2 ~ 0.1 0.1 0.1 0.75 60 force
execute if entity @s[scores={ll.cooking=2800..2805}] as @a[scores={ll.deaths=10},limit=1,sort=random] at @s run playsound minecraft:block.conduit.ambient ambient @a[distance=..5] ~ ~ ~ 2 0.7
execute if entity @s[scores={ll.cooking=2900..2905}] as @a[scores={ll.deaths=10},limit=1,sort=random] at @s run particle minecraft:dragon_breath ~ ~2 ~ 0.1 0.1 0.1 0.75 60 force
execute if entity @s[scores={ll.cooking=2900..2905}] as @a[scores={ll.deaths=10},limit=1,sort=random] at @s run playsound minecraft:block.conduit.ambient ambient @a[distance=..5] ~ ~ ~ 2 0.7
execute if entity @s[scores={ll.cooking=2997..3000}] as @a[scores={ll.deaths=10},limit=1,sort=random] at @s run particle minecraft:dragon_breath ~ ~2 ~ 0.1 0.1 0.1 1 30 force
execute if entity @s[scores={ll.cooking=2997..3000}] as @a[scores={ll.deaths=10},limit=1,sort=random] at @s run playsound minecraft:block.conduit.ambient ambient @a[distance=..5] ~ ~ ~ 2 0.7
execute if entity @s[scores={ll.cooking=2997..3000}] as @a[scores={ll.deaths=10},limit=1,sort=random] run effect give @s minecraft:nausea 10 2 true
