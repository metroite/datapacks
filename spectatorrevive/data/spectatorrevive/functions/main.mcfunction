#tick function if in spectator mode
execute as @a[gamemode=spectator] at @s positioned ~ ~1 ~ run function spectatorrevive:spectator/tick
