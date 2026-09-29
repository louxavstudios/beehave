# Expand the current normalized region to include its displaced copy.
scoreboard players operation @s worldedit.cx = @s takis.fill.x1
execute if score @s takis.fill.x2 < @s worldedit.cx run scoreboard players operation @s worldedit.cx = @s takis.fill.x2
scoreboard players operation @s worldedit.math = @s worldedit.cx
scoreboard players operation @s worldedit.math += @s worldedit.dx
execute if score @s worldedit.math < @s worldedit.cx run scoreboard players operation @s worldedit.cx = @s worldedit.math
execute store result storage worldedit:runtime region.x1 int 1 run scoreboard players get @s worldedit.cx
scoreboard players operation @s worldedit.cx = @s takis.fill.x1
execute if score @s takis.fill.x2 > @s worldedit.cx run scoreboard players operation @s worldedit.cx = @s takis.fill.x2
scoreboard players operation @s worldedit.math = @s worldedit.cx
scoreboard players operation @s worldedit.math += @s worldedit.dx
execute if score @s worldedit.math > @s worldedit.cx run scoreboard players operation @s worldedit.cx = @s worldedit.math
execute store result storage worldedit:runtime region.x2 int 1 run scoreboard players get @s worldedit.cx
scoreboard players operation @s worldedit.cy = @s takis.fill.y1
execute if score @s takis.fill.y2 < @s worldedit.cy run scoreboard players operation @s worldedit.cy = @s takis.fill.y2
scoreboard players operation @s worldedit.math = @s worldedit.cy
scoreboard players operation @s worldedit.math += @s worldedit.dy
execute if score @s worldedit.math < @s worldedit.cy run scoreboard players operation @s worldedit.cy = @s worldedit.math
execute store result storage worldedit:runtime region.y1 int 1 run scoreboard players get @s worldedit.cy
scoreboard players operation @s worldedit.cy = @s takis.fill.y1
execute if score @s takis.fill.y2 > @s worldedit.cy run scoreboard players operation @s worldedit.cy = @s takis.fill.y2
scoreboard players operation @s worldedit.math = @s worldedit.cy
scoreboard players operation @s worldedit.math += @s worldedit.dy
execute if score @s worldedit.math > @s worldedit.cy run scoreboard players operation @s worldedit.cy = @s worldedit.math
execute store result storage worldedit:runtime region.y2 int 1 run scoreboard players get @s worldedit.cy
scoreboard players operation @s worldedit.cz = @s takis.fill.z1
execute if score @s takis.fill.z2 < @s worldedit.cz run scoreboard players operation @s worldedit.cz = @s takis.fill.z2
scoreboard players operation @s worldedit.math = @s worldedit.cz
scoreboard players operation @s worldedit.math += @s worldedit.dz
execute if score @s worldedit.math < @s worldedit.cz run scoreboard players operation @s worldedit.cz = @s worldedit.math
execute store result storage worldedit:runtime region.z1 int 1 run scoreboard players get @s worldedit.cz
scoreboard players operation @s worldedit.cz = @s takis.fill.z1
execute if score @s takis.fill.z2 > @s worldedit.cz run scoreboard players operation @s worldedit.cz = @s takis.fill.z2
scoreboard players operation @s worldedit.math = @s worldedit.cz
scoreboard players operation @s worldedit.math += @s worldedit.dz
execute if score @s worldedit.math > @s worldedit.cz run scoreboard players operation @s worldedit.cz = @s worldedit.math
execute store result storage worldedit:runtime region.z2 int 1 run scoreboard players get @s worldedit.cz
execute store result storage worldedit:runtime region.id int 1 run scoreboard players get @s takis.fill.id
