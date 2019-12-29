#summoning bat
execute if score @s ll.cooking matches 2000 at @e[type=minecraft:end_crystal,distance=..0.05,limit=1] run summon minecraft:bat ~ ~ ~ {ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Tags:["ll.bat"],Silent:1b,Invulnerable:1b}
execute if score @s ll.cooking matches 2000 run playsound minecraft:block.conduit.attack.target ambient @a ~ ~ ~ 2 1.5
execute if score @s ll.cooking matches 2000 run advancement grant @a[distance=..48,scores={ll.deaths=1..9}] only limitedlife:catch_beam
execute if score @s ll.cooking matches 2100 run advancement revoke @a only limitedlife:catch_beam
#summoning endermite
execute if score @s ll.cooking matches 2000 run summon endermite ~ ~0.8 ~ {Motion:[0.5d,0d,0.5d]}
execute if score @s ll.cooking matches 2010 run summon endermite ~ ~0.8 ~ {Motion:[0d,0d,-0.5d]}
execute if score @s ll.cooking matches 2020 run summon endermite ~ ~0.8 ~ {Motion:[-0.5d,0d,0d]}
#summoning endermite in The Void
execute if score @s ll.cooking matches 2000 at @a[limit=1,sort=random,scores={ll.deaths=10}] run summon endermite ~ ~ ~
execute if score @s ll.cooking matches 2010 at @a[limit=1,sort=random,scores={ll.deaths=10}] run summon endermite ~ ~ ~
execute if score @s ll.cooking matches 2020 at @a[limit=1,sort=random,scores={ll.deaths=10}] run summon endermite ~ ~ ~
