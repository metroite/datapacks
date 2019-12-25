#re-schedule
execute if score $earlyleatherarmor$ hp.storeboard matches 1.. run schedule function earlyleatherarmor:main100 100t
#/modifyitem: replaces leather_boots with better leather_boots
#/effect: gives effect speed if worn
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",Count:1b}]}] run effect give @s speed 5 0 true
#replaceitem entity @s[nbt=!{Inventory:[{Slot:100b,id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUIDLeast:347869,UUIDMost:215875,Slot:"feet"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:0.25,Operation:2,UUIDLeast:403341,UUIDMost:166070,Slot:"feet"}]}}]}] armor.feet minecraft:leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUIDLeast:347869,UUIDMost:215875,Slot:"feet"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:0.25,Operation:2,UUIDLeast:403341,UUIDMost:166070,Slot:"feet"}]} 1
