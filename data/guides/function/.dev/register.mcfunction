tag @e[type=minecraft:marker,tag=takis.guides_new] remove takis.guides_new
summon minecraft:marker ~ ~ ~ {Tags:["takis.guides_box","takis.guides_new"]}
execute as @e[type=minecraft:marker,tag=takis.guides_new,limit=1,sort=nearest] at @s if entity @e[type=minecraft:marker,tag=takis.guides_box,tag=!takis.guides_new,distance=..0.2] run kill @s
execute as @e[type=minecraft:marker,tag=takis.guides_box,distance=..0.2,limit=1,sort=nearest] at @s run function guides:.dev/sync/one
tag @e[type=minecraft:marker,tag=takis.guides_new] remove takis.guides_new
