execute unless block ~ ~ ~ minecraft:white_shulker_box run kill @s
execute if block ~ ~ ~ minecraft:white_shulker_box run data modify block ~ ~ ~ Items set from storage godgift:cultural global_block_items
execute if block ~ ~ ~ minecraft:white_shulker_box run data modify entity @s data.last_items set from storage godgift:cultural global_block_items
