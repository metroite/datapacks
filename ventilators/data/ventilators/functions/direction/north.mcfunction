execute if block ~ ~ ~1 #ventilators:nocollision run function ventilators:direction/push/north
execute if block ~ ~ ~1 #ventilators:nocollision if block ~ ~ ~2 #ventilators:nocollision positioned ~ ~ ~1 run function ventilators:direction/push/north
execute if block ~ ~ ~1 #ventilators:nocollision if block ~ ~ ~2 #ventilators:nocollision if block ~ ~ ~3 #ventilators:nocollision positioned ~ ~ ~2 run function ventilators:direction/push/north
execute if block ~ ~ ~1 #ventilators:nocollision if block ~ ~ ~2 #ventilators:nocollision if block ~ ~ ~3 #ventilators:nocollision if block ~ ~ ~4 #ventilators:nocollision positioned ~ ~ ~3 run function ventilators:direction/push/north
execute if block ~ ~ ~1 #ventilators:nocollision if block ~ ~ ~2 #ventilators:nocollision if block ~ ~ ~3 #ventilators:nocollision if block ~ ~ ~4 #ventilators:nocollision if block ~ ~ ~5 #ventilators:nocollision positioned ~ ~ ~4 run function ventilators:direction/push/north
execute if block ~ ~ ~1 #ventilators:nocollision if block ~ ~ ~2 #ventilators:nocollision if block ~ ~ ~3 #ventilators:nocollision if block ~ ~ ~4 #ventilators:nocollision if block ~ ~ ~5 #ventilators:nocollision if block ~ ~ ~6 #ventilators:nocollision positioned ~ ~ ~5 run function ventilators:direction/push/north

execute if score _global_ v.ventilator = 1 v.ventilator if block ~ ~ ~1 #ventilators:nocollision run function ventilators:direction/particle/north
execute if score _global_ v.ventilator = 2 v.ventilator if block ~ ~ ~1 #ventilators:nocollision if block ~ ~ ~2 #ventilators:nocollision positioned ~ ~ ~1 run function ventilators:direction/particle/north
execute if score _global_ v.ventilator = 3 v.ventilator if block ~ ~ ~1 #ventilators:nocollision if block ~ ~ ~2 #ventilators:nocollision if block ~ ~ ~3 #ventilators:nocollision positioned ~ ~ ~2 run function ventilators:direction/particle/north
execute if score _global_ v.ventilator = 4 v.ventilator if block ~ ~ ~1 #ventilators:nocollision if block ~ ~ ~2 #ventilators:nocollision if block ~ ~ ~3 #ventilators:nocollision if block ~ ~ ~4 #ventilators:nocollision positioned ~ ~ ~3 run function ventilators:direction/particle/north
execute if score _global_ v.ventilator = 5 v.ventilator if block ~ ~ ~1 #ventilators:nocollision if block ~ ~ ~2 #ventilators:nocollision if block ~ ~ ~3 #ventilators:nocollision if block ~ ~ ~4 #ventilators:nocollision if block ~ ~ ~5 #ventilators:nocollision positioned ~ ~ ~4 run function ventilators:direction/particle/north
execute if score _global_ v.ventilator = 6 v.ventilator if block ~ ~ ~1 #ventilators:nocollision if block ~ ~ ~2 #ventilators:nocollision if block ~ ~ ~3 #ventilators:nocollision if block ~ ~ ~4 #ventilators:nocollision if block ~ ~ ~5 #ventilators:nocollision if block ~ ~ ~6 #ventilators:nocollision positioned ~ ~ ~5 run function ventilators:direction/particle/north

execute if score _sound_ v.ventilator = 11 v.ventilator run playsound minecraft:item.elytra.flying block @a ~ ~ ~ 0.1 2
