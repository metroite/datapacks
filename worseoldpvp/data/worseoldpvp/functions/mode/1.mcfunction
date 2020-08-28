scoreboard players reset * wop.mode
scoreboard players set $mode$ wop.mode 1
scoreboard players set @a wop.mode 1
execute as @a run attribute @s minecraft:generic.attack_speed modifier remove 3f6efeb5-899c-4d37-ad37-dbb766b7325a
tellraw @a[tag=!wop.no] ["",{"text":"worseoldpvp:","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/worseoldpvp"},"hoverEvent":{"action":"show_text","value":"reverts the combat system to the worse one back in 1.8"}},{"text":" Set global combat mode to "},{"text":"1","bold":"true","hoverEvent":{"action":"show_text","value":"cooldown and sword-block"}}]
