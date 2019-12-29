#summoning the flowers
summon armor_stand ~-2 ~3 ~ {Invisible:1b,Invulnerable:1b,Tags:["g.flower","g.flower+"],NoGravity:0b}
summon armor_stand ~-1 ~3 ~-4 {Invisible:1b,Invulnerable:1b,Tags:["g.flower"],NoGravity:0b}
summon armor_stand ~2 ~3 ~-1 {Invisible:1b,Invulnerable:1b,Tags:["g.flower","g.flower+"],NoGravity:0b}
summon armor_stand ~2 ~3 ~3 {Invisible:1b,Invulnerable:1b,Tags:["g.flower"],NoGravity:0b}
summon armor_stand ~-1 ~3 ~1 {Invisible:1b,Invulnerable:1b,Tags:["g.flower","g.flower+"],NoGravity:0b}
summon armor_stand ~ ~3 ~ {Invisible:1b,Invulnerable:1b,Tags:["g.flower","g.bone+"],NoGravity:0b}
tag @e[type=minecraft:armor_stand,distance=..8,limit=3,sort=random,tag=g.flower] add g.flowers
#chance for more flowers
execute as @e[type=minecraft:armor_stand,distance=..8,tag=g.flowers,tag=g.flower+] at @s run summon armor_stand ~-1 ~3 ~1 {Invisible:1b,Invulnerable:1b,Tags:["g.flower"],NoGravity:0b}
