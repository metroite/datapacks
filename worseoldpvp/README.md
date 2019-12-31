## [worseoldpvp](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/Metroite/datapacks/tree/master/worseoldpvp&rootDirectory=false)

You want the worse, old PvP back? Worry no more, this datapack will fulfill your wishes! Just modify your tools in the new method once by for example hitting something to damage them and enjoy your eZ, no-skill version of PvP. If you are using the old method, tools will need to be dropped out once instead. Sword-blocking works by right clicking (and sneaking in the new method if $mustsneak$ is turned on). It is **recommended** to set `Dynamic FOV` to off in **Optifine** if the old method is used or if the new method is used and either $attribute$ or $mustsneak$ is turned on in order to get rid of the zooming effect.

Set *$extend$* in *wop.extend* higher, the more the server is lagging (6 is default): `/scoreboard players set $extend$ wop.extend 6`

Use one of the mode funtions numbered from 0 to 2 if only the sword-block (1) or the no-cooldown (2) is wanted (0 is default): `/function worseoldpvp:mode/0`

Alternatively you can change ones mode individually by changing the palyers *wop.mode* score (0 is default): `/scoreboard players set <player> wop.mode 0`

Enable the new method, which is only compatible with 1.14, by setting *$oldmethod$* in *wop.extend* to 0 (1 is default): `/scoreboard players set $oldmethod$ wop.extend 0`

# These settings currently only apply to the new method:

If you want to be able to block while not sneaking set *$mustsneak$* in *wop.extend* to 0 (1 is default): `/scoreboard players set $mustsneak$ wop.extend 1`

If you want to have item attributes rather than player effects set *$attribute$* in *wop.extend* to 1 (0 is default): `/scoreboard players set $attribute$ wop.extend 0`

![worseoldpvp](worseoldpvp.png?raw=true "The worse, old PvP")

## Version

Minecraft 1.13/1.14/1.15

## Performance Impact

Tier 3/5

## Authors

**Metroite**
