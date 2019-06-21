playsound minecraft:entity.bat.takeoff block @a ~ ~ ~ 2 0.75
particle minecraft:large_smoke ~ ~ ~ 0.15 0.15 0.15 0.05 24
summon minecraft:bat ~ ~ ~ {Tags:["ll.spawnbat"],DeathLootTable:"ventilators:entities/tortured_bat",CustomName:"{\"text\":\"Tortured Bat\",\"color\":\"yellow\"}"}
kill @s
