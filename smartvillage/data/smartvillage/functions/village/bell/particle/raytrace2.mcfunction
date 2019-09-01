#raytrace wider
execute if entity @s[scores={sv.bell_ring=8..14}] positioned ^ ^-0.5 ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:bell run function smartvillage:village/bell/particle/success
execute if entity @s[scores={sv.bell_ring=8..14}] positioned ^ ^1 ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:bell run function smartvillage:village/bell/particle/success
execute if entity @s[scores={sv.bell_ring=8..14}] positioned ^0.5 ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:bell run function smartvillage:village/bell/particle/success
execute if entity @s[scores={sv.bell_ring=8..14}] positioned ^-0.5 ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:bell run function smartvillage:village/bell/particle/success
#repeat if unsuccessful
scoreboard players add @s[scores={sv.bell_ring=8..14}] sv.bell_ring 1
execute if entity @s[scores={sv.bell_ring=8..14}] positioned ^ ^ ^1 run function smartvillage:village/bell/particle/raytrace2
scoreboard players reset @s[scores={sv.bell_ring=15..}] sv.bell_ring
