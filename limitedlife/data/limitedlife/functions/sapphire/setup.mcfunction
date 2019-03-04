scoreboard objectives add sp.sincedeath minecraft.custom:minecraft.time_since_death
scoreboard objectives add sp.sg.pa.fail dummy
scoreboard players set 0 sp.sg.pa.fail 0
scoreboard players add _fallback_ sp.sg.pa.fail 0
scoreboard objectives add sp.glass_placed minecraft.used:minecraft.light_blue_stained_glass
scoreboard players add _global_ sp.glass_placed 0
scoreboard players set 10 sp.glass_placed 10
scoreboard objectives add sp.glass_broken minecraft.mined:minecraft.light_blue_stained_glass
