## [worseoldpvp](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/Metroite/datapacks/tree/master/worseoldpvp&rootDirectory=false)

You want the worse, old PvP back? Worry no more, this datapack will fulfill your wishes! Just drop your tools if you are using the old method once to update them and enjoy your eZ, no-skill version of PvP. If you are using the new method instead, tools will need to be modified once by for example hitting something to damage them. Sword-blocking works by right clicking (and sneaking in the new method). It is **recommended** to set `Dynamic FOV` to off in **Optifine** if the old method is used in order to get rid of the zooming.

Set *$extend$* in *wop.extend* higher, the more the server is lagging (6 is default): `/scoreboard players set $extend$ wop.extend 6`

Use one of the mode funtions numbered from 0 to 2 if only the sword-block (1) or the no-cooldown (2) is wanted (0 is default): `/function worseoldpvp:mode/0`

Alternatively you can change ones mode individually by changing the palyers *wop.mode* score (0 is default): `/scoreboard players set <player> wop.mode 0`

A new method has been implemented, use it by setting *$oldmethod$* in *wop.extend* to 0 (1 is default for now): `/scoreboard players set $oldmethod$ wop.extend 1`

![worseoldpvp](worseoldpvp.png?raw=true "The worse, old PvP")

## Version

Minecraft 1.14

## Performance

Tier 3/5

## Authors

**Metroite**
