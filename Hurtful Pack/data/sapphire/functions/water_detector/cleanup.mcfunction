scoreboard players add @s sp.wd.cleanup 1
#block hoppers
data merge block ~ ~-1 ~ {TransferCooldown:32.767}
data merge block ~ ~-2 ~ {TransferCooldown:32.767}
data merge block ~ ~ ~ {TransferCooldown:32.767}
#vanished (piston_move)
execute unless entity @s[tag=sp.wd.cleaned] unless entity @p[scores={sp.wd.cleanup=1..},distance=..8] positioned ~1 ~ ~ if block ~ ~ ~ minecraft:observer[facing=up] unless entity @e[tag=metroite.place,distance=..0.5] run function sapphire:water_detector/piston_move
execute unless entity @s[tag=sp.wd.cleaned] unless entity @p[scores={sp.wd.cleanup=1..},distance=..8] positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:observer[facing=up] unless entity @e[tag=metroite.place,distance=..0.5] run function sapphire:water_detector/piston_move
execute unless entity @s[tag=sp.wd.cleaned] unless entity @p[scores={sp.wd.cleanup=1..},distance=..8] positioned ~ ~1 ~ if block ~ ~ ~ minecraft:observer[facing=up] unless entity @e[tag=metroite.place,distance=..0.5] run function sapphire:water_detector/piston_move
execute unless entity @s[tag=sp.wd.cleaned] unless entity @p[scores={sp.wd.cleanup=1..},distance=..8] positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:observer[facing=up] unless entity @e[tag=metroite.place,distance=..0.5] run function sapphire:water_detector/piston_move
execute unless entity @s[tag=sp.wd.cleaned] unless entity @p[scores={sp.wd.cleanup=1..},distance=..8] positioned ~ ~ ~1 if block ~ ~ ~ minecraft:observer[facing=up] unless entity @e[tag=metroite.place,distance=..0.5] run function sapphire:water_detector/piston_move
execute unless entity @s[tag=sp.wd.cleaned] unless entity @p[scores={sp.wd.cleanup=1..},distance=..8] positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:observer[facing=up] unless entity @e[tag=metroite.place,distance=..0.5] run function sapphire:water_detector/piston_move
#essentials (mined: unless entity @s[tag=sp.wd.cleaned])
execute if entity @s[scores={sp.wd.cleanup=6..}] run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 2 2
execute if entity @s[scores={sp.wd.cleanup=6..}] run particle minecraft:effect ~ ~ ~ 0.15 0.15 0.15 0.5 24
execute if entity @s[scores={sp.wd.cleanup=6..}] unless entity @s[tag=sp.wd.cleaned] run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:observer",tag:{}}},nbt={Item:{id:"minecraft:observer",Count:1b}},distance=..2] {Item:{id:"minecraft:observer",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Water Detector\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute if entity @s[scores={sp.wd.cleanup=6..}] run kill @s
