execute if block ~ ~ ~ minecraft:barrel align xyz run function mail:.dev/register
execute unless block ~ ~ ~ minecraft:barrel if score @s takis.ray matches ..23 run scoreboard players add @s takis.ray 1
execute unless block ~ ~ ~ minecraft:barrel if score @s takis.ray matches ..23 positioned ^ ^ ^0.25 run function mail:.dev/find/barrel
