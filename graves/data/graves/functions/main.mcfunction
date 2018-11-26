#g.deaths
execute as @p[limit=1,sort=random] unless score @s g.deaths >= ZERO g.deaths run scoreboard players add @s g.deaths 0

#compatibility to loud2x2tnt
function loud2x2tnt:graves

#detecting direction
execute at @a[scores={g.deaths=1..},y_rotation=-22.5..22.5] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.drop","g.south"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=-112.5..-67.5] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.drop","g.east"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=157.5..-157.5] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.drop","g.north"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=67.5..112.5] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.drop","g.west"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=22.5..67.5] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.drop","g.south-west"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=112.5..157.5] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.drop","g.north-west"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=-157.5..-112.5] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.drop","g.north-east"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=-67.5..-22.5] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.drop","g.south-east"],NoGravity:0b,NoBasePlate:1b,Marker:1b}

#calling grave.mcfunction and killing leftover armor_stands
execute as @e[tag=g.drop,tag=!g.skull,nbt={OnGround:1b}] at @s unless block ~ ~-0.5 ~ #graves:generatable run function graves:grave
execute as @e[tag=g.drop,tag=!g.skull,nbt={OnGround:1b}] at @s if block ~ ~-0.5 ~ #graves:generatable positioned ~ ~1 ~ run function graves:grave
kill @e[tag=g.bone,nbt=!{ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}]}]

#calling groundbone and groundgbone.mcfunction: move g.bones to the ground if OnGround
execute as @e[tag=g.bone] at @s run function graves:groundbone

#global playound if a player dies
execute as @p[scores={g.deaths=1..}] run playsound minecraft:item.elytra.flying block @a ~ ~ ~ 0.25 0.5 0.25
#stops looping
scoreboard players set @p[scores={g.deaths=1..}] g.deaths 0

#call skulldrop "Skull Dust" g.drop:
execute as @e[tag=g.dropskull] at @s run function graves:skulldrop

#"Skull Dust" as bone meal
execute as @a[nbt={SelectedItem:{id:"minecraft:bone_meal",tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}},tag=!g.usebonemeal] run tag @s add g.usebonemeal
#Tall grass placement
execute at @a[tag=g.usebonemeal,scores={g.usebonemeal=1..}] run fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:tall_grass[half=lower] replace minecraft:grass
execute at @a[tag=g.usebonemeal,scores={g.usebonemeal=1..}] run fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:tall_grass[half=upper] replace minecraft:air
#calling skullmeal.mcfunction
execute at @a[tag=g.usebonemeal,scores={g.usebonemeal=1..}] run function graves:skullmeal
scoreboard players reset @a[scores={g.usebonemeal=1..}] g.usebonemeal
tag @a[nbt=!{SelectedItem:{id:"minecraft:bone_meal",tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}},tag=g.usebonemeal] remove g.usebonemeal

#calling groundgflower.mcfunction: kill g.flowers if OnGround and place random tall_flower
execute as @e[tag=g.flower,nbt={OnGround:1b}] at @s run function graves:groundgflower
