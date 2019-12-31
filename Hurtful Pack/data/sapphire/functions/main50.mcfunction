#re-schedule
execute if score $sapphire$ hp.storeboard matches 1.. run schedule function sapphire:main50 50t

#feature-compatibility: limitedlife
execute if score $limitedlife$ hp.storeboard matches 1.. run function limitedlife:sapphire/main
