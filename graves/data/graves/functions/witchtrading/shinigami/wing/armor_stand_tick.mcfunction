#initial effects (would be better if I could specifically take the laughing sound in minecraft:entity.witch.ambient)
execute as @s[tag=!wt.P.shinigami_wing.SU] at @s run function graves:witchtrading/shinigami/wing/init
#particle effects
execute if entity @p[scores={wt.rng=6..11}] positioned ^ ^ ^-0.7 run particle minecraft:dust 0.2314 0.2314 0.25098 3 ~ ~0.7 ~ 0.2 0.4 0.05 0.5 1 force
#calling shinigami_wing_kill: kill if elytra is removed
execute as @s[nbt=!{ArmorItems:[{},{},{id:"minecraft:elytra",tag:{display:{Name:"{\"text\":\"Shinigami Wings\",\"color\":\"yellow\",\"italic\":false}",Lore:["{\"text\":\"...a contract until eternity\"}"]}}},{}]}] at @s run function graves:witchtrading/shinigami/wing/kill
