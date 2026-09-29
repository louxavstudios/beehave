execute if block ~ ~ ~ minecraft:white_shulker_box if data block ~ ~ ~ {CustomName:{text:"Guides"}} align xyz run function guides:.dev/register
execute if block ~ ~ ~ minecraft:white_shulker_box if data block ~ ~ ~ {CustomName:"Guides"} align xyz run function guides:.dev/register
execute unless block ~ ~ ~ minecraft:white_shulker_box if score @s takis.ray matches ..23 run scoreboard players add @s takis.ray 1
execute unless block ~ ~ ~ minecraft:white_shulker_box if score @s takis.ray matches ..23 positioned ^ ^ ^0.25 run function guides:.dev/find/box
