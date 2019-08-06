#make sure every player has a score in wop.extend
scoreboard players set @s wop.usecarrot 0
scoreboard players set @s wop.sneaking 0
scoreboard players remove @s[scores={wop.extend=1..}] wop.extend 1
