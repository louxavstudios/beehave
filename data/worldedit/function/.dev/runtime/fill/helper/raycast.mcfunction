execute unless block ~ ~ ~ #worldedit:fill/helper/passable align xyz run function worldedit:.dev/runtime/fill/helper/store/target
execute if score @s takis.fill.found matches 1 run return 1
scoreboard players add @s takis.fill.ray 1
execute if score @s takis.fill.ray matches ..59 positioned ^ ^ ^0.1 run function worldedit:.dev/runtime/fill/helper/raycast
