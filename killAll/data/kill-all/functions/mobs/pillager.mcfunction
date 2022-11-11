execute unless entity @a[distance=0.001..,advancements={kill-all:mobs/pillager=true}] run tellraw @a ["",{"selector":"@s"},{"text":" killed a "},{"text":"[pillager]","color":"green"}]
execute unless entity @a[distance=0.001..,advancements={kill-all:mobs/pillager=true}] run scoreboard players add @a ka.score 1
execute unless entity @a[distance=0.001..,advancements={kill-all:mobs/pillager=true}] run scoreboard players add $Team ka.score 1
advancement grant @a only kill-all:mobs/pillager
