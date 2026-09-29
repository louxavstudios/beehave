data remove storage worldedit:brush input
scoreboard players set @s takis.brush.ok 0
data modify storage worldedit:brush input.block set from entity @s equipment.offhand.id
execute unless data storage worldedit:brush input.block run data modify storage worldedit:brush input.block set from entity @s Inventory[{Slot:-106b}].id
execute unless data storage worldedit:brush input.block run return 0
scoreboard players set @s takis.ray 0
scoreboard players set @s takis.brush 5
execute at @s anchored eyes positioned ^ ^ ^0.1 run function worldedit:.dev/raycast
