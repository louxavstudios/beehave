tag @e[type=minecraft:item,tag=worldedit.guides_new] remove worldedit.guides_new
execute at @s run summon minecraft:item ~ ~0.5 ~ {Tags:["worldedit.guides_new"],PickupDelay:0s,Item:{id:"minecraft:white_shulker_box",count:1}}
item modify entity @e[type=minecraft:item,tag=worldedit.guides_new,limit=1,sort=nearest] contents worldedit:make_guides
tp @e[type=minecraft:item,tag=worldedit.guides_new,limit=1,sort=nearest] @s
tag @e[type=minecraft:item,tag=worldedit.guides_new] remove worldedit.guides_new
function worldedit:.dev/notification/sound/run
