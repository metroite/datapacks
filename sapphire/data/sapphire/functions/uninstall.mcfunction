#init
scoreboard objectives remove sp.sapphire
#feature-compatibility: limitedlife
scoreboard objectives remove sp.sincedeath

#crafting
scoreboard objectives remove sp.craftdetector
scoreboard objectives remove sp.craftlight

scoreboard objectives remove sp.wd.detector
scoreboard objectives remove sp.wd.cleanup

#placement-API
scoreboard objectives remove sp.lr.pa.torch
scoreboard objectives remove sp.so.pa.ore
scoreboard objectives remove sp.wd.pa.detec
scoreboard objectives remove sp.glass_placed
scoreboard objectives remove sp.sg.piston
scoreboard objectives remove sp.glass_broken

scoreboard objectives remove sp.lr.pa.fail
scoreboard objectives remove sp.so.pa.fail
scoreboard objectives remove sp.wd.pa.fail
scoreboard objectives remove sp.sg.pa.fail

#tick
tag @a remove sp.so.pa.tag
tag @a remove sp.lr.pa.tag
tag @a remove sp.wd.pa.tag
kill @e[tag=sp.wd.detector]
kill @e[tag=sp.wd.fire]
kill @e[tag=sp.wd.gem]
kill @e[tag=sp.particle]
kill @e[tag=sp.lr.attractor]
kill @e[tag=sp.oredrop]
kill @e[tag=sp.noore]
kill @e[tag=sp.sapphire_ore]
kill @e[tag=sp.sapphire_main]
kill @e[tag=sp.spawnsquid]
#torchout
kill @e[tag=sp.to.torch]
#limitedlife
kill @e[tag=sp.sapphire_glass]
clear @a minecraft:light_blue_stained_glass{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}
tag @a remove sp.sapphireglass
