execute if block ~ ~ ~ minecraft:white_shulker_box if data block ~ ~ ~ {CustomName:{text:"Book of God Logs"}} align xyz run function godgift:.dev/log/register
execute if block ~ ~ ~ minecraft:white_shulker_box if data block ~ ~ ~ {CustomName:"Book of God Logs"} align xyz run function godgift:.dev/log/register
execute unless block ~ ~ ~ minecraft:white_shulker_box if score @s takis.ray matches ..23 run scoreboard players add @s takis.ray 1
execute unless block ~ ~ ~ minecraft:white_shulker_box if score @s takis.ray matches ..23 positioned ^ ^ ^0.25 run function godgift:.dev/log/find/box
