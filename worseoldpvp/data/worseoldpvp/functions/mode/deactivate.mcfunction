scoreboard players reset * wop.mode
scoreboard players set $mode$ wop.mode -1
tellraw @a[tag=!wop.no] ["",{"text":"worseoldpvp:","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/worseoldpvp"},"hoverEvent":{"action":"show_text","value":"reverts the combat system to the worse one back in 1.8"}},{"text":" deactivated","bold":"true","hoverEvent":{"action":"show_text","value":"cooldown and no-sword-block"}}]
