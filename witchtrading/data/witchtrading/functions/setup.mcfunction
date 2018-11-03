#Creates the  objectives and teams
team add wt.friendly
team modify wt.friendly collisionRule pushOwnTeam
team modify wt.friendly seeFriendlyInvisibles false
scoreboard objectives add wt.ttv minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add wt.twv minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add wt.rng minecraft.custom:minecraft.play_one_minute
scoreboard players set rngmax wt.rng 15
scoreboard players set 15 wt.rng 15

#feature-compatibility
function graves:witchtrading

#What you shouldn't do:
#Don't move away.
#Don't wait too long after you initialized the trade.
#Don't hit the witch.
#Don't go away after you showed her your poisonous potatoes.
#Don't switch out your poisonous potato after you showed it.
#
#All those will block trading and the witch will be very mad.
##############################################################
#Used Tags:
#"wt.setup", "wt.blocked", "wt.traded"
#
#Used Teams:
#"wt.friendly"

tellraw @a ["",{"text":" "},{"text":"witchtrading","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/witchtrading"},"hoverEvent":{"action":"show_text","value":"trade your poisonous potatoes with witches"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"}]
