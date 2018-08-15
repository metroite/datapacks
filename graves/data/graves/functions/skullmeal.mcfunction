#summoning the flowers
summon armor_stand ~-2 ~3 ~ {Invisible:1b,Invulnerable:1b,Tags:["g.flower","g.flower+"],NoGravity:0b,Marker:1b}
summon armor_stand ~-1 ~3 ~-4 {Invisible:1b,Invulnerable:1b,Tags:["g.flower"],NoGravity:0b,Marker:1b}
summon armor_stand ~2 ~3 ~-1 {Invisible:1b,Invulnerable:1b,Tags:["g.flower","g.flower+"],NoGravity:0b,Marker:1b}
summon armor_stand ~2 ~3 ~3 {Invisible:1b,Invulnerable:1b,Tags:["g.flower"],NoGravity:0b,Marker:1b}
summon armor_stand ~-1 ~3 ~1 {Invisible:1b,Invulnerable:1b,Tags:["g.flower","g.flower+"],NoGravity:0b,Marker:1b}
summon armor_stand ~ ~3 ~ {Invisible:1b,Invulnerable:1b,Tags:["g.flower","g.bone+"],NoGravity:0b,Marker:1b}
tag @e[tag=g.flower,distance=..8,limit=3,sort=random] add g.flowers
#chance for more flowers
execute as @e[tag=g.flowers,tag=g.flower+,distance=..8] at @s run summon armor_stand ~-1 ~3 ~1 {Invisible:1b,Invulnerable:1b,Tags:["g.flower"],NoGravity:0b,Marker:1b}
