summon area_effect_cloud ~2 ~2 ~2 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~-2 ~2 ~-2 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~-2 ~2 ~2 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~2 ~2 ~-2 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~1 ~2 ~2 {Tags:["g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~ ~2 ~2 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~-1 ~2 ~2 {Tags:["g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~2 ~2 ~1 {Tags:["g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~2 ~2 ~ {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~2 ~2 ~-1 {Tags:["g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~1 ~2 ~-2 {Tags:["g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~ ~2 ~-2 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~-1 ~2 ~-2 {Tags:["g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~-2 ~2 ~1 {Tags:["g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~-2 ~2 ~ {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~-2 ~2 ~-1 {Tags:["g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~1 ~2 ~1 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~-1 ~2 ~-1 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~-1 ~2 ~1 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~1 ~2 ~-1 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~ ~2 ~3 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~ ~2 ~-3 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~3 ~2 ~ {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~-3 ~2 ~ {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~-3 ~2 ~-3 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~-3 ~2 ~3 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~3 ~2 ~3 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~3 ~2 ~-3 {Tags:["g.spreadshroom","g.redshroom","g.SU.mushroom"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["g.redshroom","g.SU.mushroom","g.SU.T.mushroom"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["g.redshroom","g.SU.mushroom","g.SU.T.mushroom"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["g.redshroom","g.SU.mushroom","g.SU.T.mushroom"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["g.redshroom","g.SU.mushroom","g.SU.T.mushroom"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["g.redshroom","g.SU.mushroom","g.SU.T.mushroom"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["g.redshroom","g.SU.mushroom","g.SU.T.mushroom"],Duration:1}

execute as @e[tag=g.SU.mushroom,tag=g.redshroom,limit=4,sort=random,distance=..5] at @s[tag=!g.SU.T.mushroom] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["g.mushroom","g.redshroom"],NoGravity:0b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:2039327}
execute at @e[tag=g.spreadshroom] run tag @e[tag=g.mushroom,limit=1,distance=..0.5] add g.spreadshroom
