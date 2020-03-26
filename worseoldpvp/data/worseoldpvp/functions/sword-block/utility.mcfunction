#make sure every player has a score in wop.extend
scoreboard players reset @s wop.usecarrot
scoreboard players reset @s wop.sneaking
scoreboard players remove @s[scores={wop.extend=1..}] wop.extend 1
