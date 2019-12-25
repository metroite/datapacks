tag @s add ht.armored
execute unless entity @e[type=minecraft:pig,distance=..8,tag=ht.passenger,limit=1,sort=nearest] run summon minecraft:pig ~ ~1 ~ {Tags:["ht.passenger"],DeathLootTable:"horsetogether:entities/passenger",Saddle:1b,Silent:1b,NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
