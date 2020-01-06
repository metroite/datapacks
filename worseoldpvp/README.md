# [worseoldpvp](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/Metroite/datapacks/tree/master/worseoldpvp&rootDirectory=false)

You want the worse, old PvP back? Worry no more, this datapack will fulfill your wishes! Just drop your tools once onto the ground and enjoy your eZ, no-skill version of PvP!

It is **recommended** to set `Dynamic FOV` to off in **Optifine** if a zooming effect is experienced.

<details>
<summary>Configuration</summary>
<br>

Set *$extend$* in *wop.extend* higher, the more the server is lagging (6 is default): `/scoreboard players set $extend$ wop.extend 6`

Use one of the mode funtions numbered from 0 to 2 if only the sword-block (1) or the no-cooldown (2) is wanted (0 is default): `/function worseoldpvp:mode/0`

Alternatively you can change ones mode individually by changing the palyers *wop.mode* score (0 is default): `/scoreboard players set <player> wop.mode 0`

Enable the new method, which is only compatible with 1.14, by setting *$oldmethod$* in *wop.extend* to 0 (1 is default): `/scoreboard players set $oldmethod$ wop.extend 0`

If you decided not to use the old method, tools will need to be modified once instead, by for example damaging them. Sword-blocking works by right clicking (and sneaking in the new method if $m
  ustsneak$ is turned on).

## These settings currently only apply to the new method:

If you want to be able to block while not sneaking set *$mustsneak$* in *wop.extend* to 0 (1 is default): `/scoreboard players set $mustsneak$ wop.extend 1`

If you want to have item attributes rather than player effects set *$attribute$* in *wop.extend* to 1 (0 is default): `/scoreboard players set $attribute$ wop.extend 0`

</details>

<a href="https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/Metroite/datapacks/tree/master/worseoldpvp&rootDirectory=false" rel="The worse, old PvP">![worseoldpvp](worseoldpvp.png?raw=true "The worse, old PvP")</a>

## Version

Minecraft 1.13/1.14/1.15

## Performance Impact

Tier 3/5

## Authors

**Metroite**
