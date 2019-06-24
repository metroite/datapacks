#when a play dies
execute if entity @s[scores={vd.health=1},nbt={ActiveEffects:[{Id:20b}]}] run function voiddimension:void/wither
