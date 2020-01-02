#silk touch slows down mining speed
execute as @a[tag=hs.silk_touch] run function hardstone:utility/silk_touch
#replace blocks (harden)
execute as @a[tag=hs.valid] at @s run function hardstone:utility/determine
