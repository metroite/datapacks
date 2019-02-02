scoreboard objectives add g.deaths deathCount
scoreboard objectives add g.usebonemeal minecraft.used:minecraft.bone_meal
scoreboard players set ZERO g.deaths 0
scoreboard objectives add g.sapling_height dummy
scoreboard objectives add g.sapling_rng dummy

tellraw @a ["",{"text":"graves","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/graves"},"hoverEvent":{"action":"show_text","value":"upon death a grave will be created"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"}]
