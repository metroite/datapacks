execute align xyz positioned ~0.5 ~ ~0.5 run summon end_crystal ~ ~ ~ {ShowBottom:0b}
execute positioned ~ ~-0.5 ~ run playsound minecraft:block.conduit.activate ambient @a ~ ~ ~ 2 2
execute positioned ~ ~-0.5 ~ run particle minecraft:dragon_breath ~ ~-0.75 ~ 0.1 0.1 0.1 0.1 20 force
kill @s
