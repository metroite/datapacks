#reset blocking effects
scoreboard players set @s wop.extend 0
execute if data entity @s Inventory.[].tag.wopcarrot run function worseoldpvp:sword-block/remove/type/attribute
execute if score $attribute$ wop.extend matches ..0 if entity @s[tag=wop.removeeffect] run function worseoldpvp:sword-block/remove/type/effect
