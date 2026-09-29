$execute unless items entity @s $(slot) #minecraft:bundles[minecraft:bundle_contents] run return 0
tag @e[type=minecraft:item_display,tag=worldedit.hole.resource.probe] remove worldedit.hole.resource.probe
summon minecraft:item_display ~ ~ ~ {Tags:["worldedit.hole.resource.probe"],view_range:0.0f,width:0.0f,height:0.0f,item:{id:"minecraft:bundle",count:1}}
$item replace entity @e[type=minecraft:item_display,tag=worldedit.hole.resource.probe,distance=..1,limit=1,sort=nearest] contents from entity @s $(slot)
data modify storage worldedit:hole resource.source set from entity @e[type=minecraft:item_display,tag=worldedit.hole.resource.probe,distance=..1,limit=1,sort=nearest] item.components."minecraft:bundle_contents"
execute if data storage worldedit:hole resource.source[0] run function worldedit:.dev/hole/resource/count/next with storage worldedit:hole operation
kill @e[type=minecraft:item_display,tag=worldedit.hole.resource.probe,distance=..1]
