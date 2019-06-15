#summoning bat
execute if entity @s[scores={ll.cooking=2000}] at @e[type=minecraft:end_crystal,distance=..1] run summon minecraft:bat ~ ~ ~ {ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Tags:["ll.bat"],Silent:1b,Invulnerable:1b}
execute if entity @s[scores={ll.cooking=2000}] at @e[type=minecraft:end_crystal,distance=..1] run playsound minecraft:block.conduit.attack.target ambient @a ~ ~ ~ 2 1.5
execute if entity @s[scores={ll.cooking=2000}] run advancement grant @a[distance=..48,scores={ll.deaths=1..9}] only limitedlife:catch_beam
execute if entity @s[scores={ll.cooking=2100}] run advancement revoke @a only limitedlife:catch_beam
#summoning endermite
execute if entity @s[scores={ll.cooking=2000}] run summon endermite ~ ~0.8 ~ {Motion:[0.5d,0d,0.5d]}
execute if entity @s[scores={ll.cooking=2010}] run summon endermite ~ ~0.8 ~ {Motion:[0d,0d,-0.5d]}
execute if entity @s[scores={ll.cooking=2020}] run summon endermite ~ ~0.8 ~ {Motion:[-0.5d,0d,0d]}
#summoning endermite in The Void
execute if entity @s[scores={ll.cooking=2000}] at @a[scores={ll.deaths=10},limit=1,sort=random] run summon endermite ~ ~ ~
execute if entity @s[scores={ll.cooking=2010}] at @a[scores={ll.deaths=10},limit=1,sort=random] run summon endermite ~ ~ ~
execute if entity @s[scores={ll.cooking=2020}] at @a[scores={ll.deaths=10},limit=1,sort=random] run summon endermite ~ ~ ~
