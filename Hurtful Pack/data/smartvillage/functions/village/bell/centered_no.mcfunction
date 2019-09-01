#raytrace to make particles at the bell
execute positioned ~ ~1.5 ~ run function smartvillage:village/bell/particle_no/raytrace
#action bar message
title @s actionbar ["",{"text":"Not close enough to the village center!"}]
