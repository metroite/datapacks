scoreboard players reset * wop.mode
scoreboard players set $mode$ wop.mode -1
tellraw @a[tag=!wop.no] ["",{"text":"worseoldpvp:","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/worseoldpvp"},"hoverEvent":{"action":"show_text","value":"reverts the combat system to the worse one back in 1.8 (drop your tools once to update them)"}},{"text":" deactivated","bold":"true","hoverEvent":{"action":"show_text","value":"cooldown and no-sword-block"}}]
