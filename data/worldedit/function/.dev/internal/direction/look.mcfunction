# Minecraft yaw 0 faces south; positive pitch looks down.
execute store result score @s worldedit.yaw run data get entity @s Rotation[0]
execute store result score @s worldedit.pitch run data get entity @s Rotation[1]
scoreboard players set @s worldedit.dir 0
# Treat a clear upward/downward look as vertical. The previous 45-degree
# threshold made common diagonal aiming unexpectedly resolve as forward.
execute if score @s worldedit.pitch matches -90..-30 run scoreboard players set @s worldedit.dir 5
execute if score @s worldedit.pitch matches 30..90 run scoreboard players set @s worldedit.dir 6
execute if score @s worldedit.dir matches 0 if score @s worldedit.yaw matches -45..44 run scoreboard players set @s worldedit.dir 1
execute if score @s worldedit.dir matches 0 if score @s worldedit.yaw matches 45..134 run scoreboard players set @s worldedit.dir 2
execute if score @s worldedit.dir matches 0 if score @s worldedit.yaw matches -134..-46 run scoreboard players set @s worldedit.dir 3
execute if score @s worldedit.dir matches 0 run scoreboard players set @s worldedit.dir 4
