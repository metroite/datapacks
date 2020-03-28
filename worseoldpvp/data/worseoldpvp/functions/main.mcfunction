#tick for valid players
execute unless score $mode$ wop.mode matches -1 as @a[tag=!wop.no,scores={wop.mode=0..2}] at @s run function worseoldpvp:tick_player
