execute unless entity @a[distance=0.001..,advancements={kill-all:mobs/piglin_brute=true}] run tellraw @a ["",{"selector":"@s"},{"text":" killed a "},{"text":"[piglin_brute]","color":"green"}]
execute unless entity @a[distance=0.001..,advancements={kill-all:mobs/piglin_brute=true}] run scoreboard players add @a ka.score 1
execute unless entity @a[distance=0.001..,advancements={kill-all:mobs/piglin_brute=true}] run scoreboard players add $Team ka.score 1
advancement grant @a only kill-all:mobs/piglin_brute
