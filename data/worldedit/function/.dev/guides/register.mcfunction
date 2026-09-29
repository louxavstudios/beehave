tag @e[type=minecraft:marker,tag=worldedit.guides_new] remove worldedit.guides_new
summon minecraft:marker ~ ~ ~ {Tags:["worldedit.guides_box","worldedit.guides_new"]}
execute as @e[type=minecraft:marker,tag=worldedit.guides_new,limit=1,sort=nearest] at @s if entity @e[type=minecraft:marker,tag=worldedit.guides_box,tag=!worldedit.guides_new,distance=..0.2] run kill @s
execute as @e[type=minecraft:marker,tag=worldedit.guides_box,distance=..0.2,limit=1,sort=nearest] at @s run function worldedit:.dev/guides/sync/one
tag @e[type=minecraft:marker,tag=worldedit.guides_new] remove worldedit.guides_new
