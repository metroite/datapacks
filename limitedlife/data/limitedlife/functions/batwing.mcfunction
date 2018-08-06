#storing current daytime
execute store result score daytime ll.sincedeath run time query daytime

#effects of burning Bat Wing
execute if score max_daytime ll.sincedeath >= daytime ll.sincedeath at @s run playsound minecraft:block.fire.extinguish ambient @a[distance=..16] ~ ~ ~ 1 0.5
execute if score max_daytime ll.sincedeath >= daytime ll.sincedeath at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.01 5 normal

#Killing Bat Wing when sun shines
execute if score max_daytime ll.sincedeath >= daytime ll.sincedeath run clear @s[type=minecraft:player] minecraft:elytra{HideFlags:16,CanPlaceOn:["minecraft:void_air"]}
execute if score max_daytime ll.sincedeath >= daytime ll.sincedeath run kill @s[type=minecraft:item]
