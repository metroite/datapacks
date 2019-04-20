tag @s remove wt.sad_orchid
#effects
execute if entity @s[scores={wt.rng=1}] positioned ~ ~1.35 ~ run particle minecraft:dripping_water ^-0.175 ^ ^0.275 0 0 0 1 1 normal
#placement (recursive)
execute if entity @s[scores={wt.sad_orchid=1..}] positioned ~ ~1.5 ~ run function witchtrading:sad_orchid/placement/1
