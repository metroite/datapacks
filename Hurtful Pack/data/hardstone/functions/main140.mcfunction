#re-schedule
execute if score $hardstone$ hp.storeboard matches 1.. run schedule function hardstone:main140 140t
#reset everyones scores
execute as @a run function hardstone:utility/reset_score
