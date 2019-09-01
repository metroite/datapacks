#raytrace
execute if entity @s[scores={sv.bell_ring=1..7}] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:bell run function smartvillage:village/bell/particle_no/success
execute if entity @s[scores={sv.bell_ring=1..7}] positioned ^ ^0.5 ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:bell run function smartvillage:village/bell/particle_no/success
#repeat if unsuccessful
scoreboard players add @s[scores={sv.bell_ring=1..7}] sv.bell_ring 1
execute if entity @s[scores={sv.bell_ring=1..7}] positioned ^ ^ ^1 run function smartvillage:village/bell/particle_no/raytrace
execute if entity @s[scores={sv.bell_ring=8..}] positioned ^ ^ ^1 run function smartvillage:village/bell/particle_no/raytrace2
