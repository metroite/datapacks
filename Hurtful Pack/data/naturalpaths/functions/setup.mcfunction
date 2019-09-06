#main function (which is scheduled)
function naturalpaths:main
#scoreboard
scoreboard objectives add np.global dummy
scoreboard objectives add np.running minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add np.walking minecraft.custom:minecraft.walk_one_cm
#optional features
execute unless score $speedpaths$ np.global matches 0.. run scoreboard players set $speedpaths$ np.global 1
execute if score $speedpaths$ np.global matches 1.. run schedule function naturalpaths:path/optional_speed 9t
