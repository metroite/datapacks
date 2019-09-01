#executes if in a golden apple item then revive
execute if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:golden_apple"}}] positioned ~ ~1.1 ~ run function spectatorrevive:spectator/survival
#tp back if in block
execute unless block ~ ~ ~ #spectatorrevive:nocollision run tp @s ^ ^ ^-3
