scoreboard objectives add ll.deaths deathCount
scoreboard objectives add ll.cooking dummy
scoreboard objectives add ll.health health "❤"
scoreboard objectives setdisplay belowName ll.health
scoreboard objectives add ll.sincedeath minecraft.custom:minecraft.time_since_death
scoreboard players set max_daytime ll.sincedeath 13000
scoreboard objectives add ll.craftbatwing minecraft.crafted:minecraft.milk_bucket

#The Void
#air
fill 0 1 -35 5 6 -30 minecraft:air
#end_gateway -z/+x/+z/-x/-y/+y
fill 0 1 -35 5 6 -35 minecraft:end_gateway{Age:-9223372036854775807L,ExactTeleport:1,ExitPortal:{X:3.0,Y:3,Z:-30.5}}
fill 5 1 -35 5 6 -30 minecraft:end_gateway{Age:-9223372036854775807L,ExactTeleport:1,ExitPortal:{X:1.5,Y:3,Z:-32.0}}
fill 0 1 -30 5 6 -30 minecraft:end_gateway{Age:-9223372036854775807L,ExactTeleport:1,ExitPortal:{X:3.0,Y:3,Z:-33.5}}
fill 0 1 -30 0 6 -35 minecraft:end_gateway{Age:-9223372036854775807L,ExactTeleport:1,ExitPortal:{X:4.5,Y:3,Z:-32.0}}
fill 0 1 -30 5 1 -35 minecraft:end_gateway{Age:-9223372036854775807L,ExactTeleport:1,ExitPortal:{X:3.0,Y:3,Z:-32.0}}
fill 0 6 -30 5 6 -35 minecraft:end_gateway{Age:-9223372036854775807L,ExactTeleport:1,ExitPortal:{X:3.0,Y:3,Z:-32.0}}
#barrier
fill 1 2 -31 4 2 -34 minecraft:barrier
#bedrock -z/+x/+z/-x/-y/+y
fill 0 1 -36 5 6 -36 minecraft:bedrock
fill 6 1 -35 6 6 -30 minecraft:bedrock
fill 0 1 -29 5 6 -29 minecraft:bedrock
fill -1 1 -30 -1 6 -35 minecraft:bedrock
fill 0 0 -30 5 0 -35 minecraft:bedrock
fill 0 7 -30 5 7 -35 minecraft:bedrock
