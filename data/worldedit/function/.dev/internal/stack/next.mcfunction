function worldedit:.dev/internal/prepare/region
scoreboard players operation @s worldedit.cx = @s takis.fill.x1
execute if score @s takis.fill.x2 < @s worldedit.cx run scoreboard players operation @s worldedit.cx = @s takis.fill.x2
scoreboard players operation @s worldedit.cx += @s worldedit.dx
execute store result storage worldedit:runtime operation.dest_x int 1 run scoreboard players get @s worldedit.cx
# Re-read each minimum because prepare/region reuses takis.fill.min.
scoreboard players operation @s worldedit.cy = @s takis.fill.y1
execute if score @s takis.fill.y2 < @s worldedit.cy run scoreboard players operation @s worldedit.cy = @s takis.fill.y2
scoreboard players operation @s worldedit.cy += @s worldedit.dy
execute store result storage worldedit:runtime operation.dest_y int 1 run scoreboard players get @s worldedit.cy
scoreboard players operation @s worldedit.cz = @s takis.fill.z1
execute if score @s takis.fill.z2 < @s worldedit.cz run scoreboard players operation @s worldedit.cz = @s takis.fill.z2
scoreboard players operation @s worldedit.cz += @s worldedit.dz
execute store result storage worldedit:runtime operation.dest_z int 1 run scoreboard players get @s worldedit.cz
data modify storage worldedit:runtime operation.x1 set from storage worldedit:runtime region.x1
data modify storage worldedit:runtime operation.y1 set from storage worldedit:runtime region.y1
data modify storage worldedit:runtime operation.z1 set from storage worldedit:runtime region.z1
data modify storage worldedit:runtime operation.x2 set from storage worldedit:runtime region.x2
data modify storage worldedit:runtime operation.y2 set from storage worldedit:runtime region.y2
data modify storage worldedit:runtime operation.z2 set from storage worldedit:runtime region.z2
function worldedit:.dev/internal/stack/macro with storage worldedit:runtime operation
function worldedit:.dev/internal/selection/offset
scoreboard players remove @s worldedit.amount 1
execute if score @s worldedit.amount matches 1.. run function worldedit:.dev/internal/stack/next
