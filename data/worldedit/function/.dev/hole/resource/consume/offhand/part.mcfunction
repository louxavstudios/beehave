scoreboard players operation #new worldedit.hole = #offhand worldedit.hole
scoreboard players operation #new worldedit.hole -= #remaining worldedit.hole
execute store result storage worldedit:hole resource.offhand_count int 1 run scoreboard players get #new worldedit.hole
summon minecraft:item_display ~ ~ ~ {Tags:["worldedit.hole.resource.offhand"],view_range:0.0f,width:0.0f,height:0.0f,item:{id:"minecraft:stone",count:1}}
item replace entity @e[type=minecraft:item_display,tag=worldedit.hole.resource.offhand,distance=..1,limit=1,sort=nearest] contents from entity @s weapon.offhand
data modify entity @e[type=minecraft:item_display,tag=worldedit.hole.resource.offhand,distance=..1,limit=1,sort=nearest] item.count set from storage worldedit:hole resource.offhand_count
item replace entity @s weapon.offhand from entity @e[type=minecraft:item_display,tag=worldedit.hole.resource.offhand,distance=..1,limit=1,sort=nearest] contents
kill @e[type=minecraft:item_display,tag=worldedit.hole.resource.offhand,distance=..1]
scoreboard players set #remaining worldedit.hole 0
