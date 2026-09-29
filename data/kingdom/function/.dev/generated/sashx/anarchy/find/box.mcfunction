execute if block ~ ~ ~ #minecraft:shulker_boxes if data block ~ ~ ~ {CustomName:{"text":"Sashx Anarchy"}} align xyz run return run function kingdom:.dev/generated/sashx/anarchy/register
execute if block ~ ~ ~ #minecraft:shulker_boxes if data block ~ ~ ~ {CustomName:"Sashx Anarchy"} align xyz run return run function kingdom:.dev/generated/sashx/anarchy/register
execute if score @s takis.ray matches 24.. run return 0
scoreboard players add @s takis.ray 1
execute positioned ^ ^ ^0.25 run function kingdom:.dev/generated/sashx/anarchy/find/box
