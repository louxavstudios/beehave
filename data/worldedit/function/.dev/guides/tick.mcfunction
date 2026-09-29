execute if score #ready worldedit.guides matches 0 as @a[limit=1] at @s run function worldedit:.dev/guides/rebuild/template
execute as @e[type=minecraft:marker,tag=worldedit.guides_box] at @s unless block ~ ~ ~ minecraft:white_shulker_box run kill @s
execute as @e[type=minecraft:marker,tag=worldedit.guides_box] at @s unless score @s worldedit.guides = #version worldedit.guides run function worldedit:.dev/guides/sync/one
execute as @a run scoreboard players set @s takis.fill.ray 0
execute as @a at @s anchored eyes positioned ^ ^ ^0.1 run function worldedit:.dev/guides/find/box
