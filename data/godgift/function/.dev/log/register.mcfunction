tag @e[type=minecraft:marker,tag=takis.cultural_log_new] remove takis.cultural_log_new
summon minecraft:marker ~ ~ ~ {Tags:["takis.cultural_log_box","takis.cultural_log_new"],data:{last_items:[]}}
execute as @e[type=minecraft:marker,tag=takis.cultural_log_new,limit=1,sort=nearest] at @s if entity @e[type=minecraft:marker,tag=takis.cultural_log_box,tag=!takis.cultural_log_new,distance=..0.2] run kill @s
execute as @e[type=minecraft:marker,tag=takis.cultural_log_box,distance=..0.2,limit=1,sort=nearest] at @s run function godgift:.dev/log/sync/one
tag @e[type=minecraft:marker,tag=takis.cultural_log_new] remove takis.cultural_log_new
