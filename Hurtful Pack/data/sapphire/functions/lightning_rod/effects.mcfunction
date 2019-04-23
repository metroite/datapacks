tag @s remove sp.lr.pa.tag
#placement (recursive)
execute if entity @s[scores={sp.lr.pa.torch=1..}] positioned ~ ~1.5 ~ run function sapphire:lightning_rod/placement/1
