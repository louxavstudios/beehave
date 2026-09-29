execute if block ~ ~ ~ #minecraft:shulker_boxes if data block ~ ~ ~ {CustomName:{"text":"Kondom"}} align xyz run return run function kingdom:.dev/generated/kondom/register
execute if block ~ ~ ~ #minecraft:shulker_boxes if data block ~ ~ ~ {CustomName:"Kondom"} align xyz run return run function kingdom:.dev/generated/kondom/register
execute if score @s takis.ray matches 24.. run return 0
scoreboard players add @s takis.ray 1
execute positioned ^ ^ ^0.25 run function kingdom:.dev/generated/kondom/find/box
