tag @s remove sp.glass_block
#placement (recursive)
execute if entity @s[scores={sp.glass_placed=1..}] positioned ~ ~1.5 ~ run function limitedlife:sapphire/sapphire_glassblock/placement/1
