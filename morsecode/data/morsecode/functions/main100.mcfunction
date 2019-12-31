#re-schedule
schedule function morsecode:main100 100t
#determine if sender of receiver or nothing
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}}] at @s run function morsecode:determine
