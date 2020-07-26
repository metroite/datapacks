tag @s add ht.armored
execute unless entity @e[type=minecraft:pig,distance=..8,tag=ht.passenger,limit=1,sort=nearest] run summon minecraft:pig ~ ~1 ~ {Tags:["ht.passenger"],DeathLootTable:"minecraft:empty",Saddle:1b,Silent:1b,NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
#add player tag
execute positioned ~ ~1 ~ run tag @p[distance=..8,nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] add ht.riding
