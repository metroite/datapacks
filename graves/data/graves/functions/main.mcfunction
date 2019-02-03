#g.deaths
execute as @p[limit=1,sort=random] unless score @s g.deaths >= ZERO g.deaths run scoreboard players add @s g.deaths 0

#compatibility to limitedlife (further compatibility in function limitedlife:graves)
scoreboard players reset @a[scores={ll.deaths=10..},dx=5,dy=5,dz=-5] g.deaths
#compatibility to loud2x2tnt
function loud2x2tnt:graves

#detecting direction
execute as @a[scores={g.deaths=1..}] at @s run function graves:direction_detect

#calling grave.mcfunction
execute as @e[tag=g.drop,tag=!g.skull,nbt={OnGround:1b}] at @s unless block ~ ~-0.1 ~ #graves:nocollision run function graves:grave
execute as @e[tag=g.drop,tag=!g.skull,nbt={OnGround:1b}] at @s if block ~ ~-0.1 ~ #graves:nocollision positioned ~ ~1 ~ run function graves:grave

#killing leftover armor_stands
execute at @e[tag=g.bone,nbt={HurtTime:0s}] run summon minecraft:item ~ ~1.42 ~ {Motion:[0.0d,0.25d,0.0d],Item:{id:"minecraft:bone",Count:1}}
kill @e[tag=g.bone,nbt={HurtTime:0s}]
kill @e[tag=g.bone,nbt=!{ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}]}]

#calling groundbone and groundgbone.mcfunction: move g.bones to the ground if OnGround
execute as @e[tag=g.bone] at @s run function graves:groundbone

#global playound if a player dies
execute as @p[scores={g.deaths=1..}] run playsound minecraft:item.elytra.flying block @a ~ ~ ~ 0.25 0.5 0.25
#stops looping
scoreboard players set @p[scores={g.deaths=1..}] g.deaths 0

#call skulldrop "Skull Dust" g.drop:
execute as @e[tag=g.dropskull] at @s run function graves:skulldrop
#"Skull Dust" sapling bone mealing
execute as @e[tag=g.SU.sapling] at @s run function graves:usebonemeal/sapling_init
execute as @e[tag=g.skull_dusty] at @s run function graves:usebonemeal/sapling_growth

##placement-API: Skull Dust as bone meal
#calling essentials
execute as @a[tag=g.usebonemeal] at @s run function graves:usebonemeal/effects
execute as @e[tag=g.R.sapling] at @s run function graves:usebonemeal/placement
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:bone_meal",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}] add g.usebonemeal
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bone_meal",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run tag @s add g.usebonemeal
scoreboard players reset @a g.usebonemeal
#calling landed_flower.mcfunction: kill g.flowers if OnGround and place random tall_flower
execute as @e[tag=g.flower,nbt={OnGround:1b}] at @s run function graves:usebonemeal/landed_flower
