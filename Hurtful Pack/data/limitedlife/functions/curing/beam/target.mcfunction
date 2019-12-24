#aquire position and set it into BeamTarget, also for Y we have to subtract by 1 as it would target above the head
execute store result entity @s BeamTarget.X int 1 run data get entity @e[tag=ll.bat,limit=1,sort=nearest,distance=..50] Pos[0]
execute store result score @s ll.beamtargetY run data get entity @e[tag=ll.bat,limit=1,sort=nearest,distance=..50] Pos[1]
scoreboard players remove @s ll.beamtargetY 1
execute store result entity @s BeamTarget.Y int 1 run scoreboard players get @s ll.beamtargetY
execute store result entity @s BeamTarget.Z int 1 run data get entity @e[tag=ll.bat,limit=1,sort=nearest,distance=..50] Pos[2]
