execute unless entity @a[distance=0.001..,advancements={kill-all:mobs/phantom=true}] run tellraw @a ["",{"selector":"@s"},{"text":" killed a "},{"text":"[inu]","color":"green"}]
execute unless entity @a[distance=0.001..,advancements={kill-all:mobs/inu=true}] run scoreboard players add @a ka.score 1
execute unless entity @a[distance=0.001..,advancements={kill-all:mobs/inu=true}] run scoreboard players add $Team ka.score 1
advancement grant @a only kill-all:mobs/inu
