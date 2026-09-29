scoreboard players set @s worldedit.dx 0
scoreboard players set @s worldedit.dy 0
scoreboard players set @s worldedit.dz 0
execute if score @s worldedit.dir matches 1 run scoreboard players set @s worldedit.dz 1
execute if score @s worldedit.dir matches 2 run scoreboard players set @s worldedit.dx -1
execute if score @s worldedit.dir matches 3 run scoreboard players set @s worldedit.dx 1
execute if score @s worldedit.dir matches 4 run scoreboard players set @s worldedit.dz -1
execute if score @s worldedit.dir matches 5 run scoreboard players set @s worldedit.dy 1
execute if score @s worldedit.dir matches 6 run scoreboard players set @s worldedit.dy -1
