scoreboard objectives add ll.deaths deathCount
scoreboard objectives add ll.beamtargetY dummy
scoreboard objectives add ll.cooking dummy
execute unless score $tired_time$ ll.cooking matches 0.. run scoreboard players set $tired_time$ ll.cooking 50
execute unless score $interval$ ll.cooking matches 0.. run scoreboard players set $interval$ ll.cooking 3
scoreboard objectives add ll.health health "❤"
scoreboard objectives setdisplay belowName ll.health
scoreboard objectives add ll.sincedeath minecraft.custom:minecraft.time_since_death
scoreboard players set max_daytime ll.sincedeath 12999
scoreboard objectives add ll.craftbatwing minecraft.crafted:minecraft.milk_bucket
scoreboard objectives add ll.wa.shoot minecraft.used:minecraft.bow
scoreboard objectives add ll.wa.shootc minecraft.used:minecraft.crossbow
execute unless score $wingedarrows$ ll.wa.shoot matches 0.. run scoreboard players set $wingedarrows$ ll.wa.shoot 1
scoreboard objectives add ll.batwingflap minecraft.custom:minecraft.sneak_time
scoreboard objectives add ll.end_gateway dummy
scoreboard objectives add ll.batwingeat dummy
scoreboard players set 20 ll.batwingeat 20
scoreboard objectives add ll.wa.bind dummy
scoreboard players set 2 ll.wa.bind 2
execute unless score $bindtime$ ll.wa.bind matches 0.. run scoreboard players set $bindtime$ ll.wa.bind 30
#scheduled functions
schedule function limitedlife:main18 7t
schedule function limitedlife:main100 4t
schedule function limitedlife:main285 26t

#The Void
#air
fill -1 1 -36 5 7 -30 minecraft:air
#end_gateway -z/+x/+z/-x/-y/+y
fill 0 1 -36 5 6 -35 minecraft:end_gateway{Age:-9223372036854775807L,ExactTeleport:1,ExitPortal:{X:3.0,Y:3,Z:-30.5}}
fill 6 1 -35 5 6 -30 minecraft:end_gateway{Age:-9223372036854775807L,ExactTeleport:1,ExitPortal:{X:1.5,Y:3,Z:-32.0}}
fill 0 1 -29 5 6 -30 minecraft:end_gateway{Age:-9223372036854775807L,ExactTeleport:1,ExitPortal:{X:3.0,Y:3,Z:-33.5}}
fill -1 1 -30 0 6 -35 minecraft:end_gateway{Age:-9223372036854775807L,ExactTeleport:1,ExitPortal:{X:4.5,Y:3,Z:-32.0}}
fill 0 1 -30 5 1 -35 minecraft:end_gateway{Age:-9223372036854775807L,ExactTeleport:1,ExitPortal:{X:3.0,Y:3,Z:-32.0}}
fill 0 7 -30 5 7 -35 minecraft:end_gateway{Age:-9223372036854775807L,ExactTeleport:1,ExitPortal:{X:3.0,Y:3,Z:-32.0}}
#barrier
fill 1 2 -31 4 2 -34 minecraft:barrier
#bedrock -z/+x/+z/-x/-y/+y
fill -1 0 -37 6 7 -37 minecraft:bedrock
fill 7 0 -36 7 7 -29 minecraft:bedrock
fill -1 0 -28 6 7 -28 minecraft:bedrock
fill -2 0 -29 -2 7 -36 minecraft:bedrock
fill -1 0 -29 6 0 -36 minecraft:bedrock
fill -1 8 -29 6 8 -36 minecraft:bedrock
