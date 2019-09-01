execute if score @s sv.counter matches 0 run title @s subtitle ["",{"text":"deserted, once ","italic":true,"color":"gray"},{"text":"trustful","italic":true,"color":"aqua"}]
execute if score @s sv.counter matches 1..7 run title @s subtitle ["",{"text":"isolated and ","italic":true,"color":"gray"},{"text":"trustful","italic":true,"color":"aqua"}]
execute if score @s sv.counter matches 8..15 run title @s subtitle ["",{"text":"rural and ","italic":true,"color":"gray"},{"text":"trustful","italic":true,"color":"aqua"}]
execute if score @s sv.counter matches 16..23 run title @s subtitle ["",{"text":"suburban and ","italic":true,"color":"gray"},{"text":"trustful","italic":true,"color":"aqua"}]
execute if score @s sv.counter matches 24..30 run title @s subtitle ["",{"text":"urban and ","italic":true,"color":"gray"},{"text":"trustful","italic":true,"color":"aqua"}]
execute if score @s sv.counter matches 31..38 run title @s subtitle ["",{"text":"crowded and ","italic":true,"color":"gray"},{"text":"trustful","italic":true,"color":"aqua"}]
execute if score @s sv.counter matches 39.. run title @s subtitle ["",{"text":"overcrowded and ","italic":true,"color":"gray"},{"text":"trustful","italic":true,"color":"aqua"}]
advancement grant @s only smartvillage:trustful_village
