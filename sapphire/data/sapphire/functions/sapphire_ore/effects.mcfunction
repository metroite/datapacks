tag @s remove sp.so.pa.tag
#placement (recursive)
execute if entity @s[scores={sp.so.pa.ore=1..}] positioned ~ ~1.5 ~ run function sapphire:sapphire_ore/placement/1
