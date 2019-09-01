summon minecraft:ravager ~ ~ ~ {Tags:["sv.irongolem"],PersistenceRequired:1b}
tag @s add sv.replace
schedule function smartvillage:village/standing/hostile/replace_core 2t
function smartvillage:village/standing/hostile/effects
