#scoreboard timer (lower=more accurate)
execute if score @s ue.pearlthrow = $accuracy$ ue.pearlthrow run scoreboard players reset @s ue.pearlthrow
scoreboard players add @s ue.pearlthrow 1
#get uuid of thrower
execute unless entity @s[scores={ue.uuid=1..}] store result score @s ue.uuid run scoreboard players get @p[scores={ue.uuid=1..},distance=..32] ue.uuid
##calls success (for dragon_egg tp or ender_pearl nodmg) at direction of motion
execute if entity @s[scores={ue.pearlthrow=1},tag=!ue.calulated] run function usefulender:ender_pearl/direction/calculate
