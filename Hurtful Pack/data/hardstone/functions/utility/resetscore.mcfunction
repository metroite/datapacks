#re-schedule
execute if score $hardstone$ hp.storeboard matches 1.. run schedule function hardstone:utility/resetscore 7s
#reset scores
scoreboard players reset @a hs.minegrass
scoreboard players reset @a hs.minestone
scoreboard players reset @a hs.minecobble
scoreboard players reset @a hs.minesand
scoreboard players reset @a hs.minerack
