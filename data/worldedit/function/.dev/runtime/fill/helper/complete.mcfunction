function worldedit:.dev/runtime/fill/helper/remove/box

scoreboard players operation @s takis.fill.min = @s takis.fill.x1
scoreboard players operation @s takis.fill.max = @s takis.fill.x2
execute if score @s takis.fill.min > @s takis.fill.max run scoreboard players operation @s takis.fill.min >< @s takis.fill.max
execute store result storage worldedit:fill_helper box.min_x int 1 run scoreboard players get @s takis.fill.min
scoreboard players add @s takis.fill.max 1
execute store result storage worldedit:fill_helper box.max_x int 1 run scoreboard players get @s takis.fill.max
scoreboard players operation @s takis.fill.size = @s takis.fill.max
scoreboard players operation @s takis.fill.size -= @s takis.fill.min
execute store result storage worldedit:fill_helper box.size_x int 1 run scoreboard players get @s takis.fill.size

scoreboard players operation @s takis.fill.min = @s takis.fill.y1
scoreboard players operation @s takis.fill.max = @s takis.fill.y2
execute if score @s takis.fill.min > @s takis.fill.max run scoreboard players operation @s takis.fill.min >< @s takis.fill.max
execute store result storage worldedit:fill_helper box.min_y int 1 run scoreboard players get @s takis.fill.min
scoreboard players add @s takis.fill.max 1
execute store result storage worldedit:fill_helper box.max_y int 1 run scoreboard players get @s takis.fill.max
scoreboard players operation @s takis.fill.size = @s takis.fill.max
scoreboard players operation @s takis.fill.size -= @s takis.fill.min
execute store result storage worldedit:fill_helper box.size_y int 1 run scoreboard players get @s takis.fill.size

scoreboard players operation @s takis.fill.min = @s takis.fill.z1
scoreboard players operation @s takis.fill.max = @s takis.fill.z2
execute if score @s takis.fill.min > @s takis.fill.max run scoreboard players operation @s takis.fill.min >< @s takis.fill.max
execute store result storage worldedit:fill_helper box.min_z int 1 run scoreboard players get @s takis.fill.min
scoreboard players add @s takis.fill.max 1
execute store result storage worldedit:fill_helper box.max_z int 1 run scoreboard players get @s takis.fill.max
scoreboard players operation @s takis.fill.size = @s takis.fill.max
scoreboard players operation @s takis.fill.size -= @s takis.fill.min
execute store result storage worldedit:fill_helper box.size_z int 1 run scoreboard players get @s takis.fill.size

scoreboard players operation #owner takis.fill.id = @s takis.fill.id
function worldedit:.dev/runtime/fill/helper/render with storage worldedit:fill_helper box
scoreboard players operation @e[type=minecraft:block_display,tag=takis.fill_new] takis.fill.id = #owner takis.fill.id
tag @e[type=minecraft:block_display,tag=takis.fill_new] remove takis.fill_new

execute store result storage worldedit:fill_helper message.x1 int 1 run scoreboard players get @s takis.fill.x1
execute store result storage worldedit:fill_helper message.y1 int 1 run scoreboard players get @s takis.fill.y1
execute store result storage worldedit:fill_helper message.z1 int 1 run scoreboard players get @s takis.fill.z1
execute store result storage worldedit:fill_helper message.x2 int 1 run scoreboard players get @s takis.fill.x2
execute store result storage worldedit:fill_helper message.y2 int 1 run scoreboard players get @s takis.fill.y2
execute store result storage worldedit:fill_helper message.z2 int 1 run scoreboard players get @s takis.fill.z2
data remove storage worldedit:fill_helper message.block
execute store result storage worldedit:fill_helper message.id int 1 run scoreboard players get @s takis.fill.id
function worldedit:.dev/runtime/fill/helper/read/cached/offhand with storage worldedit:fill_helper message
execute unless data storage worldedit:fill_helper message.block run data modify storage worldedit:fill_helper message.block set value "minecraft:air"
execute unless entity @s[tag=worldedit.silent_region] run function worldedit:.dev/runtime/fill/helper/message/with/block with storage worldedit:fill_helper message
