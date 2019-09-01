#determine if there already is a marked villager, if so take over its scores
execute as @e[tag=sv.marked] unless entity @s[scores={sv.center_x=0,sv.center_y=0,sv.center_z=0}] run function smartvillage:village/common/center_known
execute unless entity @e[tag=sv.marked,distance=..200] run function smartvillage:village/common/center_get
#initial iron_golem
execute unless entity @e[type=minecraft:iron_golem,distance=..30] run summon minecraft:iron_golem ~ ~ ~ {PersistenceRequired:1b}
