#villager to pillager/vindicator/evoker
execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:cleric"}}] run function smartvillage:village/standing/hostile/replace_villager_to_evoker

execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:fletcher"}}] run function smartvillage:village/standing/hostile/replace_villager_to_pillager
execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:farmer"}}] run function smartvillage:village/standing/hostile/replace_villager_to_pillager
execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run function smartvillage:village/standing/hostile/replace_villager_to_pillager
execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run function smartvillage:village/standing/hostile/replace_villager_to_pillager
execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run function smartvillage:village/standing/hostile/replace_villager_to_pillager

execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:librarian"}}] run function smartvillage:village/standing/hostile/replace_villager_to_illusioner
execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:cartographer"}}] run function smartvillage:village/standing/hostile/replace_villager_to_illusioner

execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:armorer"}}] run function smartvillage:village/standing/hostile/replace_villager_to_vindicator
execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:butcher"}}] run function smartvillage:village/standing/hostile/replace_villager_to_vindicator
execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:nitwit"}}] run function smartvillage:village/standing/hostile/replace_villager_to_vindicator
execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:fisherman"}}] run function smartvillage:village/standing/hostile/replace_villager_to_vindicator
execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:mason"}}] run function smartvillage:village/standing/hostile/replace_villager_to_vindicator
execute if entity @s[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:shepherd"}}] run function smartvillage:village/standing/hostile/replace_villager_to_vindicator
#iron_golem to ravager
execute if entity @s[type=minecraft:iron_golem] run function smartvillage:village/standing/hostile/replace_iron_golem
#if it didn't work then it shall never work
tag @s add sv.replacefail
