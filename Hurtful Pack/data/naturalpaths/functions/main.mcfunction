#re-schedule function
execute if score $naturalpaths$ hp.storeboard matches 1.. run schedule function naturalpaths:main 241t
#run path functions through trigger.mcfunction, which determines which kind of replacing should happen and how frequent
function naturalpaths:path/trigger
