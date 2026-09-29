execute unless data storage guides:guides block_items[0] run return 0
execute unless block ~ ~ ~ minecraft:white_shulker_box run kill @s
execute if block ~ ~ ~ minecraft:white_shulker_box run data modify block ~ ~ ~ Items set from storage guides:guides block_items
execute if block ~ ~ ~ minecraft:white_shulker_box run scoreboard players operation @s takis.guides = #version takis.guides
