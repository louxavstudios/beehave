scoreboard players operation @s takis.fill.min = @s takis.fill.x1
scoreboard players operation @s takis.fill.max = @s takis.fill.x2
execute if score @s takis.fill.min > @s takis.fill.max run scoreboard players operation @s takis.fill.min >< @s takis.fill.max
execute store result storage worldedit:runtime region.x1 int 1 run scoreboard players get @s takis.fill.min
execute store result storage worldedit:runtime region.x2 int 1 run scoreboard players get @s takis.fill.max
scoreboard players operation @s worldedit.size.x = @s takis.fill.max
scoreboard players operation @s worldedit.size.x -= @s takis.fill.min
scoreboard players add @s worldedit.size.x 1
scoreboard players operation @s takis.fill.min = @s takis.fill.y1
scoreboard players operation @s takis.fill.max = @s takis.fill.y2
execute if score @s takis.fill.min > @s takis.fill.max run scoreboard players operation @s takis.fill.min >< @s takis.fill.max
execute store result storage worldedit:runtime region.y1 int 1 run scoreboard players get @s takis.fill.min
execute store result storage worldedit:runtime region.y2 int 1 run scoreboard players get @s takis.fill.max
scoreboard players operation @s worldedit.size.y = @s takis.fill.max
scoreboard players operation @s worldedit.size.y -= @s takis.fill.min
scoreboard players add @s worldedit.size.y 1
scoreboard players operation @s takis.fill.min = @s takis.fill.z1
scoreboard players operation @s takis.fill.max = @s takis.fill.z2
execute if score @s takis.fill.min > @s takis.fill.max run scoreboard players operation @s takis.fill.min >< @s takis.fill.max
execute store result storage worldedit:runtime region.z1 int 1 run scoreboard players get @s takis.fill.min
execute store result storage worldedit:runtime region.z2 int 1 run scoreboard players get @s takis.fill.max
scoreboard players operation @s worldedit.size.z = @s takis.fill.max
scoreboard players operation @s worldedit.size.z -= @s takis.fill.min
scoreboard players add @s worldedit.size.z 1
execute store result storage worldedit:runtime region.id int 1 run scoreboard players get @s takis.fill.id
