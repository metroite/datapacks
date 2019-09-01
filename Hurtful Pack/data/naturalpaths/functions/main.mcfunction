#re-schedule function
execute if score $naturalpaths$ hp.storeboard matches 1.. run schedule function naturalpaths:main 6s
#test if moving 2sec after reset
scoreboard players reset @a np.walking
scoreboard players reset @a np.running
schedule function naturalpaths:path/determine 1s
#replace block
execute as @a[scores={np.global=1..}] at @s if block ~ ~ ~ #naturalpaths:air run function naturalpaths:path/replace
