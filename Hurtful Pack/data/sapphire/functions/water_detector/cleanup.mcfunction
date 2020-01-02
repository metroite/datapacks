scoreboard players add @s sp.wd.cleanup 1
#block hoppers
data merge block ~ ~-1 ~ {TransferCooldown:6}
data merge block ~ ~-2 ~ {TransferCooldown:6}
data merge block ~ ~ ~ {TransferCooldown:6}
#vanished (piston_move)
execute unless entity @s[tag=sp.wd.cleaned] unless entity @p[scores={sp.wd.cleanup=1..},distance=..8] positioned ~1 ~ ~ if block ~ ~ ~ minecraft:observer[facing=up] unless entity @e[tag=metroite.place,distance=..0.5] run function sapphire:water_detector/piston_move
execute unless entity @s[tag=sp.wd.cleaned] unless entity @p[scores={sp.wd.cleanup=1..},distance=..8] positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:observer[facing=up] unless entity @e[tag=metroite.place,distance=..0.5] run function sapphire:water_detector/piston_move
execute unless entity @s[tag=sp.wd.cleaned] unless entity @p[scores={sp.wd.cleanup=1..},distance=..8] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:observer[facing=up] unless entity @e[tag=metroite.place,distance=..0.5] run function sapphire:water_detector/piston_move
execute unless entity @s[tag=sp.wd.cleaned] unless entity @p[scores={sp.wd.cleanup=1..},distance=..8] positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:observer[facing=up] unless entity @e[tag=metroite.place,distance=..0.5] run function sapphire:water_detector/piston_move
execute unless entity @s[tag=sp.wd.cleaned] unless entity @p[scores={sp.wd.cleanup=1..},distance=..8] positioned ~ ~ ~1 if block ~ ~ ~ minecraft:observer[facing=up] unless entity @e[tag=metroite.place,distance=..0.5] run function sapphire:water_detector/piston_move
execute unless entity @s[tag=sp.wd.cleaned] unless entity @p[scores={sp.wd.cleanup=1..},distance=..8] positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:observer[facing=up] unless entity @e[tag=metroite.place,distance=..0.5] run function sapphire:water_detector/piston_move
#essentials (mined: unless entity @s[tag=sp.wd.cleaned])
execute if entity @s[scores={sp.wd.cleanup=6..}] run function sapphire:water_detector/cleanup_success
