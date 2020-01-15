schedule function morsecode:main100 68t
schedule function morsecode:main20 3t
#scoreboard
scoreboard objectives add mc.itemrotation dummy
execute unless score $wirelessredstone$ mc.itemrotation matches 0.. run scoreboard players set $wirelessredstone$ mc.itemrotation 1
scoreboard objectives add mc.craftreceiver minecraft.crafted:minecraft.feather
