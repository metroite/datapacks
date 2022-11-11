execute unless entity @a[distance=0.001..,advancements={kill-all:mobs/zombified_piglin=true}] run tellraw @a ["",{"selector":"@s"},{"text":" killed a "},{"text":"[zombified_piglin]","color":"green"}]
execute unless entity @a[distance=0.001..,advancements={kill-all:mobs/zombified_piglin=true}] run scoreboard players add @a ka.score 1
execute unless entity @a[distance=0.001..,advancements={kill-all:mobs/zombified_piglin=true}] run scoreboard players add $Team ka.score 1
advancement grant @a only kill-all:mobs/zombified_piglin
