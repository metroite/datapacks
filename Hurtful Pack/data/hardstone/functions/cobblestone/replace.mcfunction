#actual replacement
execute unless score $falling_cobble$ hs.minecobble matches 1 unless block ~ ~-1 ~ #hardstone:air run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone_slab[type=bottom] replace #hardstone:air
execute unless score $falling_cobble$ hs.minecobble matches 1 if block ~ ~-1 ~ #hardstone:air run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone_slab[type=top] replace #hardstone:air

execute if score $falling_cobble$ hs.minecobble matches 1 unless block ~ ~-1 ~ #hardstone:air run fill ~ ~ ~ ~ ~ ~ minecraft:cobblestone_slab[type=bottom] replace #hardstone:air
execute if score $falling_cobble$ hs.minecobble matches 1 if block ~ ~-1 ~ #hardstone:air align xz positioned ~0.5 ~ ~0.5 run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:cobblestone_slab"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:16,FallHurtAmount:1f}
data merge entity @s {Item:{id:"minecraft:cobblestone_slab",Count:1b}}
#anti-glitch-through
execute as @a[distance=..0.5,nbt={OnGround:0b}] at @s run tp @s ~ ~0.625 ~
execute as @a[distance=..0.5,nbt={OnGround:1b}] at @s run tp @s ^ ^ ^-0.625
