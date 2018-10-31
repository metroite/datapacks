scoreboard players reset @s ll.cooking
data merge entity @s[tag=!ll.blockeddone] {PickupDelay:20,Tags:["ll.blockeddone","ll.blocked"]}
execute as @a[tag=ll.bat,sort=nearest,limit=1] run tag @s remove ll.bat
tag @s remove ll.healingredient
