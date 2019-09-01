#trigger
scoreboard players enable @s sv.stuck
execute if score @s sv.stuck matches -1 run function smartvillage:village/adventure_mode/effects
scoreboard players add @s sv.stuck 1
execute if score @s sv.stuck matches 300.. run function smartvillage:village/adventure_mode/message
#beds are locked in untrustful villages
execute if score @s sv.sleepbed matches 1.. run function smartvillage:village/locked-bed/cancel
scoreboard players reset @s sv.sleepbed
