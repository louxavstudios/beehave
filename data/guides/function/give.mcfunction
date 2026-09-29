tag @e[type=minecraft:item,tag=takis.guides_new] remove takis.guides_new
execute at @s run summon minecraft:item ~ ~0.5 ~ {Tags:["takis.guides_new"],PickupDelay:0s,Item:{id:"minecraft:white_shulker_box",count:1}}
item modify entity @e[type=minecraft:item,tag=takis.guides_new,limit=1,sort=nearest] contents guides:make
tp @e[type=minecraft:item,tag=takis.guides_new,limit=1,sort=nearest] @s
tag @e[type=minecraft:item,tag=takis.guides_new] remove takis.guides_new
