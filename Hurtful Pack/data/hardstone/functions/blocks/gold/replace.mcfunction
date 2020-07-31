#actual replacement
fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace #hardstone:air
#restore ore if raw nugget is disabled
execute unless score $nugget$ hs.gold matches 1.. run function hardstone:blocks/gold/restore
#prevent from going through block
function hardstone:utility/anti-glitch-through
