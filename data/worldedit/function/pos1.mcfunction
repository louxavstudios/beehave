execute unless score @s takis.fill.id matches 1.. run function worldedit:.dev/runtime/fill/helper/assign/id
execute at @s align xyz run summon minecraft:marker ~ ~ ~ {Tags:["worldedit.command_pos"]}
execute store result score @s takis.fill.tx run data get entity @e[type=minecraft:marker,tag=worldedit.command_pos,limit=1,sort=nearest] Pos[0]
execute store result score @s takis.fill.ty run data get entity @e[type=minecraft:marker,tag=worldedit.command_pos,limit=1,sort=nearest] Pos[1]
execute store result score @s takis.fill.tz run data get entity @e[type=minecraft:marker,tag=worldedit.command_pos,limit=1,sort=nearest] Pos[2]
kill @e[type=minecraft:marker,tag=worldedit.command_pos,limit=1,sort=nearest]
function worldedit:.dev/runtime/fill/helper/select/pos1
function worldedit:.dev/notification/sound/run
