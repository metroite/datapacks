#looks up if score is fitting
execute as @a[scores={np.walking=1..}] if score @s ha.armorcount matches 40.. at @s run function naturalpaths:path/heavyarmor/replace
execute as @a[scores={np.running=1..},tag=!np.heavyarmor] if score @s ha.armorcount matches 40.. at @s run function naturalpaths:path/heavyarmor/replace
tag @a remove np.heavyarmor
