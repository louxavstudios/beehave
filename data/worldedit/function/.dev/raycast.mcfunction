execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless block ~ ~ ~ minecraft:void_air align xyz run function worldedit:.dev/replace with storage worldedit:brush input
execute if block ~ ~ ~ minecraft:air if score @s takis.ray matches ..23 run scoreboard players add @s takis.ray 1
execute if block ~ ~ ~ minecraft:air if score @s takis.ray matches ..23 positioned ^ ^ ^0.25 run function worldedit:.dev/raycast
execute if block ~ ~ ~ minecraft:cave_air if score @s takis.ray matches ..23 run scoreboard players add @s takis.ray 1
execute if block ~ ~ ~ minecraft:cave_air if score @s takis.ray matches ..23 positioned ^ ^ ^0.25 run function worldedit:.dev/raycast
execute if block ~ ~ ~ minecraft:void_air if score @s takis.ray matches ..23 run scoreboard players add @s takis.ray 1
execute if block ~ ~ ~ minecraft:void_air if score @s takis.ray matches ..23 positioned ^ ^ ^0.25 run function worldedit:.dev/raycast
