#create area_effect_cloud if not already existent, also mechanics to make the player realize it is a centered bell
execute if score @s sv.center_x matches -15..15 if score @s sv.center_y matches -5..5 if score @s sv.center_z matches -15..15 run function smartvillage:village/bell/centered
execute unless score @s sv.center_x matches -15..15 run function smartvillage:village/bell/centered_no
execute unless score @s[tag=!sv.centered_no] sv.center_y matches -5..5 run function smartvillage:village/bell/centered_no
execute unless score @s[tag=!sv.centered_no] sv.center_z matches -15..15 run function smartvillage:village/bell/centered_no
#stop multiple calls^^
tag @s remove sv.centered_no
#rename village to iron golem name
data modify entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village] CustomName set from entity @e[distance=..110,limit=1,sort=nearest,type=minecraft:iron_golem] CustomName
execute store result score @s sv.renamedV run data get entity @e[distance=..110,limit=1,sort=nearest,type=minecraft:iron_golem] CustomName
execute if score @s sv.renamedV matches 1.. run advancement grant @s only smartvillage:name_village
execute if score @s sv.renamedV matches 1.. run tag @e[distance=..110,sort=nearest,limit=1,tag=sv.village] add sv.named
#title
title @s title ["",{"selector":"@e[distance=..110,sort=nearest,limit=1,tag=sv.village]"}]
execute unless entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village] run title @s title ["",{"text":"Village"}]
#get into survival mode if trusted
tag @s remove sv.trusted
execute if entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village,tag=sv.hero,tag=sv.named,scores={sv.counter=20..}] run tag @s add sv.trusted
gamemode survival @s[gamemode=adventure,tag=sv.trusted,scores={sv.gamemode=0..1}]
gamemode adventure @s[gamemode=survival,tag=!sv.trusted]
#subtitle state of village
function smartvillage:village/status/state
#reset score
scoreboard players reset @s sv.bell_ring
