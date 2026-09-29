execute store result storage worldedit:fill_helper cache.current.id int 1 run scoreboard players get @s takis.fill.id
data modify storage worldedit:fill_helper cache.current.block set value "minecraft:air"
execute unless items entity @s weapon.offhand #worldedit:blocks run return run function worldedit:.dev/runtime/fill/helper/write/cached/offhand with storage worldedit:fill_helper cache.current

# Use Minecraft's slot-aware item command instead of reading the player's raw
# Inventory NBT. The temporary display exists only during this function and is
# never sent to clients.
tag @e[type=minecraft:item_display,tag=takis.fill_cache_probe] remove takis.fill_cache_probe
summon minecraft:item_display ~ ~ ~ {Tags:["takis.fill_cache_probe"],view_range:0.0f,width:0.0f,height:0.0f,item:{id:"minecraft:stone",count:1}}
item replace entity @e[type=minecraft:item_display,tag=takis.fill_cache_probe,distance=..1,limit=1,sort=nearest] contents from entity @s weapon.offhand
data modify storage worldedit:fill_helper cache.current.block set from entity @e[type=minecraft:item_display,tag=takis.fill_cache_probe,distance=..1,limit=1,sort=nearest] item.id
kill @e[type=minecraft:item_display,tag=takis.fill_cache_probe,distance=..1]
function worldedit:.dev/runtime/fill/helper/write/cached/offhand with storage worldedit:fill_helper cache.current
