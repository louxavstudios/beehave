execute if block ~ ~ ~ minecraft:white_shulker_box if data block ~ ~ ~ {CustomName:{text:"WorldEdit Guides"}} align xyz run function worldedit:.dev/guides/register
execute if block ~ ~ ~ minecraft:white_shulker_box if data block ~ ~ ~ {CustomName:"WorldEdit Guides"} align xyz run function worldedit:.dev/guides/register
execute unless block ~ ~ ~ minecraft:white_shulker_box if score @s takis.fill.ray matches ..23 run scoreboard players add @s takis.fill.ray 1
execute unless block ~ ~ ~ minecraft:white_shulker_box if score @s takis.fill.ray matches ..23 positioned ^ ^ ^0.25 run function worldedit:.dev/guides/find/box
