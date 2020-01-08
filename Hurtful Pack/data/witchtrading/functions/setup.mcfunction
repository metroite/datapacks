#Creates the  objectives and teams
team add wt.friendly
team modify wt.friendly collisionRule pushOwnTeam
team modify wt.friendly seeFriendlyInvisibles false
scoreboard objectives add wt.ttv minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add wt.twv minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add wt.rng minecraft.custom:minecraft.play_one_minute
scoreboard players set $rngmax$ wt.rng 15

#placement-API
scoreboard objectives add wt.sad_orchid minecraft.used:minecraft.blue_orchid
scoreboard objectives add wt.so.pa.fail dummy
scoreboard players add _fallback_ wt.so.pa.fail 0

#feature-compatibility: graves
execute if score $graves$ hp.storeboard matches 1.. run function graves:witchtrading/setup

#scheduled functions
schedule function witchtrading:main20 6t
schedule function witchtrading:main100 28t

# This is outdated
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
#"wt.trading", "wt.blocked", "wt.traded"
#
#Used Teams:
#"wt.friendly"
