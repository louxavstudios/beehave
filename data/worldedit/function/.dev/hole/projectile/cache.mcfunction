data modify storage worldedit:hole cached_block set value "minecraft:air"
tag @e[type=minecraft:item_display,tag=worldedit.holy.probe] remove worldedit.holy.probe
summon minecraft:item_display ~ ~ ~ {Tags:["worldedit.holy.probe"],view_range:0.0f,width:0.0f,height:0.0f,item:{id:"minecraft:stone",count:1}}
item replace entity @e[type=minecraft:item_display,tag=worldedit.holy.probe,distance=..1,limit=1,sort=nearest] contents from entity @s weapon.offhand
data modify storage worldedit:hole cached_block set from entity @e[type=minecraft:item_display,tag=worldedit.holy.probe,distance=..1,limit=1,sort=nearest] item.id
kill @e[type=minecraft:item_display,tag=worldedit.holy.probe,distance=..1]
