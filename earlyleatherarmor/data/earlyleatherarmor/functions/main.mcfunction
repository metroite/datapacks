#re-schedule
schedule function earlyleatherarmor:main100 100t
#/effect: gives effect speed if worn
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",Count:1b}]}] run effect give @s speed 5 0 true
