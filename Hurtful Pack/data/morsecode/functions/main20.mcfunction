#re-schedule
execute if score $morsecode$ hp.storeboard matches 1.. run schedule function morsecode:main20 20t
#crafting mobile_receiver
execute as @a[scores={mc.craftreceiver=1..}] run function morsecode:mobile_receiver/craft
