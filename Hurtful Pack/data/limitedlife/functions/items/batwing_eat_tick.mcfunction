scoreboard players add $counter$ ll.batwingeat 1
execute if score $counter$ ll.batwingeat = 20 ll.batwingeat run scoreboard players remove @a[scores={ll.batwingeat=1..}] ll.batwingeat 1
execute if score $counter$ ll.batwingeat >= 20 ll.batwingeat run scoreboard players set $counter$ ll.batwingeat 0
