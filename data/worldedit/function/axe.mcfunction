tag @e[type=minecraft:item,tag=worldedit.new_tool] remove worldedit.new_tool
execute at @s run summon minecraft:item ~ ~0.5 ~ {Tags:["worldedit.new_tool"],PickupDelay:0s,Item:{id:"minecraft:wooden_axe",count:1,components:{"minecraft:custom_name":{text:"WorldEdit Axe",color:"gold",italic:false}}}}
item modify entity @e[type=minecraft:item,tag=worldedit.new_tool,limit=1,sort=nearest] contents worldedit:make
tp @e[type=minecraft:item,tag=worldedit.new_tool,limit=1,sort=nearest] @s
tag @e[type=minecraft:item,tag=worldedit.new_tool] remove worldedit.new_tool
function worldedit:.dev/notification/sound/run
