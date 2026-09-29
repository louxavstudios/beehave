# Generated allowlist discovery and registered-box checks.
execute as @a[name=xavthecave] run scoreboard players set @s takis.ray 0
execute as @a[name=xavthecave] at @s anchored eyes positioned ^ ^ ^0.1 run function kingdom:.dev/generated/kondom/find/box
execute as @a[name=hahaAngee_] run scoreboard players set @s takis.ray 0
execute as @a[name=hahaAngee_] at @s anchored eyes positioned ^ ^ ^0.1 run function kingdom:.dev/generated/lulu/village/find/box
execute as @a[name=Sashimir] run scoreboard players set @s takis.ray 0
execute as @a[name=Sashimir] at @s anchored eyes positioned ^ ^ ^0.1 run function kingdom:.dev/generated/sashx/anarchy/find/box
execute as @a[name=loangoncalves] run scoreboard players set @s takis.ray 0
execute as @a[name=loangoncalves] at @s anchored eyes positioned ^ ^ ^0.1 run function kingdom:.dev/generated/loisland/find/box
execute in minecraft:overworld as @e[type=minecraft:marker,tag=takis.kingdom_allowlist] at @s run function kingdom:.dev/generated/check/box
execute in minecraft:the_nether as @e[type=minecraft:marker,tag=takis.kingdom_allowlist] at @s run function kingdom:.dev/generated/check/box
execute in minecraft:the_end as @e[type=minecraft:marker,tag=takis.kingdom_allowlist] at @s run function kingdom:.dev/generated/check/box
