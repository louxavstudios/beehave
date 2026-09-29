function worldedit:.dev/internal/prepare/region
scoreboard players set @s worldedit.count 0
scoreboard players operation @s worldedit.cx = @s takis.fill.x1
scoreboard players operation @s worldedit.cy = @s takis.fill.y1
scoreboard players operation @s worldedit.cz = @s takis.fill.z1
scoreboard players operation @s worldedit.cx = @s takis.fill.min
execute store result score @s worldedit.cx run data get storage worldedit:runtime region.x1
execute store result score @s worldedit.cy run data get storage worldedit:runtime region.y1
execute store result score @s worldedit.cz run data get storage worldedit:runtime region.z1
function worldedit:.dev/internal/count/next
tellraw @s [{"text":"WorldEdit: found ","color":"gray"},{"score":{"name":"@s","objective":"worldedit.count"},"color":"white"},{"text":" matching blocks","color":"gray"}]
function worldedit:.dev/notification/sound/run
