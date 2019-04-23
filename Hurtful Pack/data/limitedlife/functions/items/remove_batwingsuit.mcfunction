#storing current daytime
execute store result score daytime ll.sincedeath run time query daytime

#effects of burning Batwing Suit
execute if score max_daytime ll.sincedeath >= daytime ll.sincedeath at @s run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 1 0.5
execute if score max_daytime ll.sincedeath >= daytime ll.sincedeath at @s anchored eyes run particle minecraft:smoke ^ ^-0.8 ^-0.2 0 0.3 0 0.1 50 normal

#Killing Batwing Suit when sun shines
execute if score max_daytime ll.sincedeath >= daytime ll.sincedeath run clear @s[type=minecraft:player] minecraft:elytra{Damage:12,Unbreakable:1b,HideFlags:16,CanPlaceOn:["minecraft:void_air"]}
execute if score max_daytime ll.sincedeath >= daytime ll.sincedeath run kill @s[type=minecraft:item]
execute if score max_daytime ll.sincedeath >= daytime ll.sincedeath run advancement grant @p[distance=..8] only limitedlife:batwing_suit_burn
