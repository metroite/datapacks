#re-schedule
execute if score $usefulender$ hp.storeboard matches 1.. run schedule function usefulender:main100 100t
#define uuid if ender pearl has been thrown and reset ue.pearlthrow
execute as @a unless entity @s[scores={ue.uuid=1..}] at @s run function usefulender:uuid/define
