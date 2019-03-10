scoreboard objectives add wop.usecarrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add wop.extend dummy
scoreboard players set extend wop.extend 6
scoreboard players set 0 wop.extend 0
scoreboard objectives add wop.health health
scoreboard objectives add wop.damage dummy
scoreboard objectives add wop.damagecalc dummy
scoreboard players set 1 wop.damagecalc 1
scoreboard players set _diamondsword_ wop.damagecalc 1561
scoreboard players set _ironsword_ wop.damagecalc 250
scoreboard players set _goldensword_ wop.damagecalc 32
scoreboard players set _woodensword_ wop.damagecalc 59
scoreboard players set _stonesword_ wop.damagecalc 131
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"worseoldpvp","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/worseoldpvp"},"hoverEvent":{"action":"show_text","value":"reverts the combat system to the worse one back in 1.8 (drop your tools once to update them)"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"}]
