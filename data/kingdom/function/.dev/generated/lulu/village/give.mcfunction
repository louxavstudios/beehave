tag @e[type=minecraft:item,tag=takis.kingdom_new_item] remove takis.kingdom_new_item
summon minecraft:item ~ ~0.5 ~ {Tags:["takis.kingdom_new_item"],PickupDelay:0s,Item:{id:"minecraft:white_shulker_box",count:1}}
item modify entity @e[type=minecraft:item,tag=takis.kingdom_new_item,limit=1,sort=nearest,distance=..4] contents kingdom:generated/lulu_village_allowlist
tp @e[type=minecraft:item,tag=takis.kingdom_new_item,limit=1,sort=nearest,distance=..4] @s
tag @e[type=minecraft:item,tag=takis.kingdom_new_item] remove takis.kingdom_new_item
