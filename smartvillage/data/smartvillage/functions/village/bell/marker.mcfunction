#summons the marker area_effect_cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["sv.village","sv.center"],CustomName:'{"text":"Village"}'}
execute as @e[tag=sv.village,limit=1,sort=nearest,distance=..3] run function smartvillage:village/bell/takeover
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 1 2
