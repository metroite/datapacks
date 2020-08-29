#remove the axe nerf (if not selected)
execute unless predicate worseoldpvp:holding_axe run function worseoldpvp:axes/normalize
#remove the axe nerf (if SelectedItemSlot changes) (wop.itemslot is read in worseoldpvp:axes/nerf, at inital axe select)
execute store result score @s wop.itemslottemp run data get entity @s SelectedItemSlot
execute unless score @s wop.itemslottemp = @s wop.itemslot run function worseoldpvp:axes/normalize
