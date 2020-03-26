#init
scoreboard objectives remove wop.usecarrot
scoreboard objectives remove wop.extend
scoreboard objectives remove wop.health
scoreboard objectives remove wop.damage
scoreboard objectives remove wop.validitem
scoreboard objectives remove wop.sneaking
scoreboard objectives remove wop.mode
scoreboard objectives remove wop.itemslot
scoreboard objectives remove wop.itemslottemp
scoreboard objectives remove wop.drop
tellraw @a[tag=!wop.no] ["",{"text":"worseoldpvp:","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/worseoldpvp"},"hoverEvent":{"action":"show_text","value":"reverts the combat system to the worse one back in 1.8"}},{"text":" uninstalling...","bold":"true","hoverEvent":{"action":"show_text","value":"cooldown and no-sword-block"}}]
setblock ~ ~ ~ minecraft:repeating_command_block{Command:"function worseoldpvp:uninstall_tick",auto:1b,conditionMet:1b,CustomName:"[{\"text\":\"worseoldpvp: \",\"color\":\"green\"},{\"text\":\"uninstaller\",\"color\":\"reset\"}]"} replace
setblock ~ ~1 ~ minecraft:oak_sign{Text1:"{\"text\":\"ensures that\"}",Text2:"{\"text\":\"all selected\"}",Text3:"{\"text\":\"tools are\"}",Text4:"{\"text\":\"reverted back\"}"} replace
#tick
function worseoldpvp:uninstall_tick
