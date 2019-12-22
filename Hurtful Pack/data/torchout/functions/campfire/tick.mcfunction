#cleanup
execute unless block ~ ~ ~ minecraft:campfire run kill @s
#inactive
execute if entity @s[tag=to.cf.inactive] if block ~ ~ ~ minecraft:campfire[lit=true] run function torchout:campfire/in
#active is handled in main1200 (this is for refueling, has been taken out of main1200, as it would've taken 1 minute for logs to be consumed:)
execute if entity @e[type=minecraft:item,distance=..0.5,nbt={Item:{Count:1b}}] run function torchout:campfire/refuel
