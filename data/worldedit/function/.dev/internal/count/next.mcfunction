execute store result storage worldedit:runtime count.x int 1 run scoreboard players get @s worldedit.cx
execute store result storage worldedit:runtime count.y int 1 run scoreboard players get @s worldedit.cy
execute store result storage worldedit:runtime count.z int 1 run scoreboard players get @s worldedit.cz
data modify storage worldedit:runtime count.block set from storage worldedit:runtime args.block
function worldedit:.dev/internal/count/check with storage worldedit:runtime count
scoreboard players add @s worldedit.cx 1
execute store result score #max worldedit.math run data get storage worldedit:runtime region.x2
execute if score @s worldedit.cx <= #max worldedit.math run return run function worldedit:.dev/internal/count/next
execute store result score @s worldedit.cx run data get storage worldedit:runtime region.x1
scoreboard players add @s worldedit.cz 1
execute store result score #max worldedit.math run data get storage worldedit:runtime region.z2
execute if score @s worldedit.cz <= #max worldedit.math run return run function worldedit:.dev/internal/count/next
execute store result score @s worldedit.cz run data get storage worldedit:runtime region.z1
scoreboard players add @s worldedit.cy 1
execute store result score #max worldedit.math run data get storage worldedit:runtime region.y2
execute if score @s worldedit.cy <= #max worldedit.math run function worldedit:.dev/internal/count/next
