execute unless score @s worldedit.copy matches 1 run return run tellraw @s {"text":"WorldEdit: copy a region first","color":"red"}
execute at @s align xyz run summon minecraft:marker ~ ~ ~ {Tags:["worldedit.command_pos"]}
execute store result score @s takis.fill.x1 run data get entity @e[type=minecraft:marker,tag=worldedit.command_pos,limit=1,sort=nearest] Pos[0]
execute store result score @s takis.fill.y1 run data get entity @e[type=minecraft:marker,tag=worldedit.command_pos,limit=1,sort=nearest] Pos[1]
execute store result score @s takis.fill.z1 run data get entity @e[type=minecraft:marker,tag=worldedit.command_pos,limit=1,sort=nearest] Pos[2]
kill @e[type=minecraft:marker,tag=worldedit.command_pos,limit=1,sort=nearest]
scoreboard players operation @s takis.fill.x2 = @s takis.fill.x1
scoreboard players operation @s takis.fill.x2 += @s worldedit.size.x
scoreboard players remove @s takis.fill.x2 1
scoreboard players operation @s takis.fill.y2 = @s takis.fill.y1
scoreboard players operation @s takis.fill.y2 += @s worldedit.size.y
scoreboard players remove @s takis.fill.y2 1
scoreboard players operation @s takis.fill.z2 = @s takis.fill.z1
scoreboard players operation @s takis.fill.z2 += @s worldedit.size.z
scoreboard players remove @s takis.fill.z2 1
scoreboard players set @s takis.fill.state 2
tag @s add worldedit.silent_region
function worldedit:.dev/runtime/fill/helper/complete
tag @s remove worldedit.silent_region
scoreboard players set @s worldedit.paste 1
tellraw @s [{"text":"WorldEdit: paste preview ready. ","color":"gray"},{"text":"[Confirm]","color":"green","click_event":{"action":"run_command","command":"/function worldedit:confirm"}}]
