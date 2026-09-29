tag @e[type=minecraft:marker,tag=takis.kingdom_new] remove takis.kingdom_new
summon minecraft:marker ~ ~ ~ {Tags:["takis.kingdom_allowlist","takis.kingdom_new"],data:{kingdom_key:"sashx_anarchy"}}
scoreboard players set @e[type=minecraft:marker,tag=takis.kingdom_new,distance=..1,limit=1,sort=nearest] kingdom.box.id 3
execute as @e[type=minecraft:marker,tag=takis.kingdom_new,distance=..1,limit=1,sort=nearest] at @s if entity @e[type=minecraft:marker,tag=takis.kingdom_allowlist,tag=!takis.kingdom_new,distance=..0.2] run kill @s
execute as @e[type=minecraft:marker,tag=takis.kingdom_new,distance=..1,limit=1,sort=nearest] at @s run function kingdom:.dev/generated/sashx/anarchy/sync/one
tag @e[type=minecraft:marker,tag=takis.kingdom_new] remove takis.kingdom_new
