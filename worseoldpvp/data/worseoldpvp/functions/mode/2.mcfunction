scoreboard players reset * wop.mode
scoreboard players set $mode$ wop.mode 2
tellraw @a[tag=!wop.no] ["",{"text":"worseoldpvp:","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/worseoldpvp"},"hoverEvent":{"action":"show_text","value":"reverts the combat system to the worse one back in 1.8"}},{"text":" Set global combat mode to "},{"text":"2","bold":"true","hoverEvent":{"action":"show_text","value":"no-cooldown and no-sword-block"}}]
