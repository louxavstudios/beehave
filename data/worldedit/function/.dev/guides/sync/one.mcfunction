execute unless data storage worldedit:guides block_items[0] run return 0
execute unless block ~ ~ ~ minecraft:white_shulker_box run kill @s
execute if block ~ ~ ~ minecraft:white_shulker_box run data modify block ~ ~ ~ Items set from storage worldedit:guides block_items
execute if block ~ ~ ~ minecraft:white_shulker_box run scoreboard players operation @s worldedit.guides = #version worldedit.guides
