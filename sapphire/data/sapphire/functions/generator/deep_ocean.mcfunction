#call generate
function sapphire:generator/generate
#Summon armor_stand above sea water layer
summon armor_stand ~ 66 ~ {Tags:["sp.oredrop"],Invisible:1b,Marker:1b}
tag @s add sp.deep_ocean
