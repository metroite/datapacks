#re-schedule
schedule function ventilators:main20 20t
#turning ventilators off
execute as @e[tag=v.fan] at @s run function ventilators:ventilator/tick20
#kills tortured bats
kill @e[type=minecraft:bat,tag=ll.spawnbat,nbt={BatFlags:1b}]
