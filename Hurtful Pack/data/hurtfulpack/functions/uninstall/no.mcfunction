tag @s remove hurtful.sad
title @s actionbar ["",{"text":"Uninstallation of the "},{"text":"Hurtful Pack","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master"},"hoverEvent":{"action":"show_text","value":"datapack pack for survival, but harder"}},{"text":" canceled..."}]
tellraw @s ["",{"text":"/reload","color":"green","hoverEvent":{"action":"show_text","value":"click to run /reload"},"clickEvent":{"action":"run_command","value":"/reload"}},{"text":" to restore all scoreboards!"}]
