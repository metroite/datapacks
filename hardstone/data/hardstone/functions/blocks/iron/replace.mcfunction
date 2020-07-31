#actual replacement
fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone replace #hardstone:air
#restore ore if raw nugget is disabled
execute unless score $nugget$ hs.iron matches 1.. run function hardstone:blocks/iron/restore
#prevent from going through block
function hardstone:utility/anti-glitch-through
