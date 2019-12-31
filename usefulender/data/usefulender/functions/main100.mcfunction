#re-schedule
schedule function usefulender:main100 100t
#define uuid if ender pearl has been thrown and reset ue.pearlthrow
execute as @a unless entity @s[scores={ue.uuid=1..}] at @s run function usefulender:uuid/define
