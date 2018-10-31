#g.deaths
scoreboard players add @a[limit=1,sort=random] g.deaths 0

#compatibility to loud2x2tnt
function loud2x2tnt:graves

#detecting direction
execute at @a[scores={g.deaths=1..},y_rotation=-45..45] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.drop","g.south"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=-135..-45] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.drop","g.east"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=135..-135] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.drop","g.north"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=45..135] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.drop","g.west"],NoGravity:0b,NoBasePlate:1b,Marker:1b}

#calling grave.mcfunction and killing leftover armor_stands
execute as @e[tag=g.drop,tag=!g.skull,nbt={OnGround:1b}] at @s unless block ~ ~-0.5 ~ #graves:generatable run function graves:grave
execute as @e[tag=g.drop,tag=!g.skull,nbt={OnGround:1b}] at @s if block ~ ~-0.5 ~ #graves:generatable positioned ~ ~1 ~ run function graves:grave
kill @e[tag=g.bone,nbt=!{ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}]}]

#calling groundgbone.mcfunction: move g.bones to the ground if OnGround
execute as @e[tag=g.bone,tag=g.nogravity,nbt={OnGround:1b}] at @s run function graves:groundgbone

#stops looping
scoreboard players set @a[scores={g.deaths=1..}] g.deaths 0

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
