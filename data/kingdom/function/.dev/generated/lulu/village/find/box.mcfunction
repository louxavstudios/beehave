execute if block ~ ~ ~ #minecraft:shulker_boxes if data block ~ ~ ~ {CustomName:{"text":"Lulu Village"}} align xyz run return run function kingdom:.dev/generated/lulu/village/register
execute if block ~ ~ ~ #minecraft:shulker_boxes if data block ~ ~ ~ {CustomName:"Lulu Village"} align xyz run return run function kingdom:.dev/generated/lulu/village/register
execute if score @s takis.ray matches 24.. run return 0
scoreboard players add @s takis.ray 1
execute positioned ^ ^ ^0.25 run function kingdom:.dev/generated/lulu/village/find/box
