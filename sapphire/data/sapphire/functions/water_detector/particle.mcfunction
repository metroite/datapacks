#particle setup
execute if entity @s[tag=sp.wd.SU.tag] run function sapphire:water_detector/particle_setup
#cleanup
execute unless block ~ ~ ~ minecraft:observer[facing=up] run function sapphire:water_detector/cleanup
scoreboard players reset @a sp.wd.cleanup
execute if block ~ ~ ~ minecraft:observer[facing=up] run scoreboard players reset @s sp.wd.pa.detec
#effects
execute if entity @s[tag=!sp.wd.SU.tag] if block ~ ~ ~ minecraft:observer[facing=up,powered=false] if entity @e[tag=sp.wd.fire,distance=..0.5,nbt={Fire:0s}] run fill ~ ~ ~ ~ ~ ~ minecraft:observer[facing=up,powered=true]
execute if entity @s[tag=!sp.wd.SU.tag] if block ~ ~ ~ minecraft:observer[facing=up,powered=true] unless entity @e[tag=sp.wd.fire,distance=..0.5,nbt={Fire:0s}] run fill ~ ~ ~ ~ ~ ~ minecraft:observer[facing=up,powered=false]
execute if entity @s[tag=!sp.wd.SU.tag] if entity @e[tag=sp.wd.fire,distance=..0.5,nbt={Fire:0s}] run scoreboard players add @s sp.wd.detector 1
execute if entity @s[tag=!sp.wd.SU.tag] unless entity @e[tag=sp.wd.fire,distance=..0.5,nbt={Fire:0s}] run scoreboard players set @s sp.wd.detector 0
execute if entity @s[tag=!sp.wd.SU.tag,scores={sp.wd.detector=1..}] run particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.3 0.3 0.3 0.05 1
execute if entity @s[tag=!sp.wd.SU.tag,scores={sp.wd.detector=1}] run playsound minecraft:block.fire.extinguish ambient @a
execute if entity @s[tag=!sp.wd.SU.tag,scores={sp.wd.detector=100}] run kill @e[tag=sp.wd.fire,distance=..0.5,nbt={Fire:0s}]
execute if entity @s[tag=!sp.wd.SU.tag,scores={sp.wd.detector=100}] run summon minecraft:armor_stand ~ ~0.5 ~ {Fire:32767s,Invulnerable:1b,Invisible:1b,NoGravity:1b,Tags:["sp.wd.fire"],Small:1b}
execute if entity @s[tag=!sp.wd.SU.tag,scores={sp.wd.detector=100}] run playsound minecraft:block.fire.ambient ambient @a
execute if entity @s[tag=!sp.wd.SU.tag,scores={sp.wd.detector=100}] run scoreboard players set @s sp.wd.detector 0
#remove setup
tag @s remove sp.wd.SU.tag
