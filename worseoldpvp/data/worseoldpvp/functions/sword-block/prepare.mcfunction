#replace offhand, if empty, with invisible carrot_on_a_stick to detect right clicks
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{wopblocking:0b}}]}] run function worseoldpvp:sword-block/replace
#remove the blocking effects (if extend time is up)
execute if score $attribute$ wop.extend matches ..0 if entity @s[tag=wop.removeeffect] run function worseoldpvp:sword-block/remove/type/effect
#playsound if hit and if initally blocked (also sets wop.damage)
execute if score @s wop.usecarrot matches 1.. run function worseoldpvp:sword-block/block/init
