#schedule
execute if score $heavyarmor$ hp.storeboard matches 1.. run schedule function heavyarmor:main 4s
#armor-slow-down
execute as @a run function heavyarmor:armor/count
