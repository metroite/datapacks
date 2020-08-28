#make sure every player has a score in wop.extend
scoreboard players reset @s wop.usecarrot
scoreboard players reset @s wop.sneaking
scoreboard players remove @s[scores={wop.extend=1..}] wop.extend 1
#remove the blocking effects (if not selected)
execute if data entity @s Inventory.[].tag.wopcarrot unless predicate worseoldpvp:holding_sword run function worseoldpvp:sword-block/remove/trigger
