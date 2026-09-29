tag @e[type=minecraft:item,tag=takis.cultural_log_new] remove takis.cultural_log_new
execute at @s run summon minecraft:item ~ ~0.5 ~ {Tags:["takis.cultural_log_new"],PickupDelay:0s,Item:{id:"minecraft:white_shulker_box",count:1}}
item modify entity @e[type=minecraft:item,tag=takis.cultural_log_new,limit=1,sort=nearest] contents godgift:make_cultural_log
data modify entity @e[type=minecraft:item,tag=takis.cultural_log_new,limit=1,sort=nearest] Item.components."minecraft:container" set from storage godgift:cultural selected_logs
tp @e[type=minecraft:item,tag=takis.cultural_log_new,limit=1,sort=nearest] @s
tag @e[type=minecraft:item,tag=takis.cultural_log_new] remove takis.cultural_log_new
