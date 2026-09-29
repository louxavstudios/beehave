execute store result score @s worldedit.yaw run data get entity @s Rotation[0]
execute if score @s worldedit.yaw matches -45..44 run scoreboard players set @s worldedit.dir 3
execute if score @s worldedit.yaw matches 45..134 run scoreboard players set @s worldedit.dir 1
execute if score @s worldedit.yaw matches -134..-46 run scoreboard players set @s worldedit.dir 4
execute if score @s worldedit.yaw matches 135..180 run scoreboard players set @s worldedit.dir 2
execute if score @s worldedit.yaw matches -180..-135 run scoreboard players set @s worldedit.dir 2
