scoreboard objectives add g.deaths deathCount
scoreboard objectives add g.usebonemeal minecraft.used:minecraft.bone_meal

tellraw @a ["",{"text":"graves","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/graves"},"hoverEvent":{"action":"show_text","value":"upon death a grave will be created"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"}]