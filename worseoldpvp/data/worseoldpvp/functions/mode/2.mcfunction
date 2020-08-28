scoreboard players reset * wop.mode
scoreboard players set $mode$ wop.mode 2
scoreboard players set @a wop.mode 2
execute as @a run attribute @s minecraft:generic.attack_speed modifier add 3f6efeb5-899c-4d37-ad37-dbb766b7325a "1.8 PvP" 100 multiply
tellraw @a[tag=!wop.no] ["",{"text":"worseoldpvp:","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/worseoldpvp"},"hoverEvent":{"action":"show_text","value":"reverts the combat system to the worse one back in 1.8"}},{"text":" Set global combat mode to "},{"text":"2","bold":"true","hoverEvent":{"action":"show_text","value":"no-cooldown and no-sword-block"}}]
