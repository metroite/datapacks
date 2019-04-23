scoreboard objectives add wop.usecarrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add wop.extend dummy
scoreboard players set 0 wop.extend 0
scoreboard players set 1 wop.extend 1
execute unless score $extend$ wop.extend >= 0 wop.extend run scoreboard players set $extend$ wop.extend 6
execute unless score $mode$ wop.extend >= 0 wop.extend run scoreboard players set $mode$ wop.extend 0
scoreboard objectives add wop.health health
scoreboard objectives add wop.damage dummy
scoreboard objectives add wop.damagecalc dummy
scoreboard players set 1 wop.damagecalc 1
scoreboard players set _diamondsword_ wop.damagecalc 1561
scoreboard players set _ironsword_ wop.damagecalc 250
scoreboard players set _goldensword_ wop.damagecalc 32
scoreboard players set _woodensword_ wop.damagecalc 59
scoreboard players set _stonesword_ wop.damagecalc 131
