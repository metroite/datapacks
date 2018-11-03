#allow more witches
execute if score rngmax wt.rng = 15 wt.rng run scoreboard players add rngmax wt.rng 1

#the witch
execute if entity @p[scores={wt.rng=16},nbt={SelectedItem:{id:"minecraft:poisonous_potato"}},team=wt.friendly,distance=..6] run summon villager ~ ~ ~ {CustomName:"{\"text\":\"Shinigami Rem\"}",Silent:1b,Invulnerable:1b,Tags:["wt.shinigami"],Team:"wt.friendly",NoAI:1b,CanPickUpLoot:0b,CareerLevel:1,InLove:0,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:9999999,ShowParticles:0b}],Offers:{Recipes:[{buy:{id:"minecraft:poisonous_potato",Count:16b},sell:{id:"minecraft:bone_meal",Count:1b,tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Skull Dust\",\"color\":\"yellow\",\"italic\":false}"}}}},{buy:{id:"minecraft:poisonous_potato",Count:1b},sell:{id:"minecraft:emerald",Count:8b}},{rewardExp:1b,maxUses:1,uses:0,buy:{id:"minecraft:poisonous_potato",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"Mysterious Potion\",\"color\":\"light_purple\"}"},Potion:"minecraft:water",CustomPotionColor:0,HideFlags:32,CustomPotionEffects:[{Id:20b,Amplifier:5b,Duration:20,ShowParticles:0b}]}}}]}}
scoreboard players set @a wt.rng 16
execute at @e[type=minecraft:villager,tag=wt.shinigami] run tag @e[type=minecraft:witch,sort=nearest,limit=1,distance=..2] add wt.shinigami
