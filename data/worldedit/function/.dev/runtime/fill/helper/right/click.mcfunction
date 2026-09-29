execute if score @s takis.fill.click matches 1.. run return 0
scoreboard players set @s takis.fill.click 2
execute if predicate worldedit:sneaking run return run function worldedit:.dev/runtime/fill/helper/clear
execute unless score @s takis.fill.id matches 1.. run function worldedit:.dev/runtime/fill/helper/assign/id
function worldedit:.dev/runtime/fill/helper/cache/offhand
scoreboard players set @s takis.fill.ray 0
scoreboard players set @s takis.fill.found 0
execute at @s anchored eyes positioned ^ ^ ^0.1 run function worldedit:.dev/runtime/fill/helper/raycast
execute unless score @s takis.fill.found matches 1 run return 0
function worldedit:.dev/runtime/fill/helper/select/pos2
