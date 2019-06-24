#in end or overworld check
execute if entity @s[nbt={Dimension:0},tag=!vd.tp_done] run function voiddimension:rift/enter
execute if entity @s[nbt={Dimension:1},tag=!vd.tp_done] run function voiddimension:rift/exit
