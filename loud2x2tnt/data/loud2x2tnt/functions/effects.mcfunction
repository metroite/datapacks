#effects
particle minecraft:angry_villager ~ ~0.1 ~ 0 0.2 0 1 1 force
tag @s add l2t.fused
execute at @s[nbt={Fuse:3s}] at @a[distance=0..16] run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 2 0.6
execute at @s[nbt={Fuse:3s}] at @a[distance=17..32] run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1.7 0.6
execute at @s[nbt={Fuse:3s}] at @a[distance=33..64] run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1.4 0.6
execute at @s[nbt={Fuse:3s}] at @a[distance=65..128] run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1.1 0.6
execute at @s[nbt={Fuse:3s}] at @a[distance=129..256] run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 0.8 0.6
execute at @s[nbt={Fuse:3s}] at @a[distance=257..512] run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 0.5 0.6
execute at @s[nbt={Fuse:3s}] at @a[distance=513..1024] run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 0.2 0.6
execute at @s[nbt={Fuse:3s}] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Glowing:1b,NoAI:1b,powered:0b,ExplosionRadius:10b,Fuse:0,ignited:1b}
execute at @s[nbt={Fuse:5s}] run particle minecraft:large_smoke ~ ~4 ~ 4 4 4 0.7 1000 force

#Make Fuse longer for l2t.tagged
data merge entity @s[tag=!l2t.longfuse] {Tags:["l2t.longfuse"],Fuse:300s}
