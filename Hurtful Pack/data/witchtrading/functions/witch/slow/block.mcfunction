team leave @s
execute unless entity @s[tag=wt.traded] run function witchtrading:witch/block
tag @s remove wt.traded
