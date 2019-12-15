#main function (which is scheduled)
schedule function smartvillage:main20 6t
#scoreboards
scoreboard objectives add sv.center_x dummy
scoreboard objectives add sv.center_y dummy
scoreboard objectives add sv.center_z dummy
scoreboard objectives add sv.renamedV dummy
scoreboard objectives add sv.counter dummy
scoreboard objectives add sv.global dummy
scoreboard objectives add sv.gamemode dummy
execute unless score $threshold$ sv.global matches 1.. run scoreboard players set $threshold$ sv.global 5000
scoreboard objectives add sv.traded minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add sv.damagedealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add sv.chestopened minecraft.custom:minecraft.open_chest
scoreboard objectives add sv.sleepbed minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add sv.bell_ring minecraft.custom:minecraft.bell_ring
scoreboard objectives add sv.stuck trigger
scoreboard objectives add sv.killvillager minecraft.killed:minecraft.villager
scoreboard objectives add sv.killigolem minecraft.killed:minecraft.iron_golem
