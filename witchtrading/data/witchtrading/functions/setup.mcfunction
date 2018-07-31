#Creates the  objectives and teams
team add friendly
team option friendly collisionRule pushOwnTeam
team option friendly seeFriendlyInvisibles false
scoreboard objectives add witchtrading.ttv minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add witchtrading.twv minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add rng minecraft.custom:minecraft.play_one_minute

#What you shouldn't do:
#Don't move away and don't wait too long after you initialized the trade. The witch will be very mad.
#Don't hit the witch.
#Don't go away after you showed her your poisonous potatoes.
#Don't switch out your poisonous potato after you showed it.
#
#All those will block trading
##############################################################
#Used Tags:
#"setup", "blocked", "traded"
#
#Used Teams:
#"friendly"
