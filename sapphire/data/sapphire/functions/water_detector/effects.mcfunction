tag @s remove sp.wd.pa.tag
#placement (recursive)
execute if entity @s[scores={sp.wd.pa.detec=1..}] positioned ~ ~1.5 ~ run function sapphire:water_detector/placement/1
