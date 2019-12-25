#re-schedule
execute if score $loud2x2tnt$ hp.storeboard matches 1.. run schedule function loud2x2tnt:main50 50t
#detects if tnt is placed 2x2x2. Execution for each of the tnt:
execute as @e[type=minecraft:tnt,tag=!l2t.fused] at @s run function loud2x2tnt:check
