gamemode survival @s[gamemode=adventure]
#title
title @s title ["",{"text":"Leaving "},{"selector":"@e[distance=..110,sort=nearest,limit=1,tag=sv.village]"}]
execute unless entity @e[distance=..110,sort=nearest,limit=1,tag=sv.village] run title @s title ["",{"text":"Leaving Village"}]
function smartvillage:village/status/state
#setup
tag @s remove sv.entered
