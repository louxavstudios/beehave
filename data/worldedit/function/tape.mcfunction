execute unless score @s takis.fill.state matches 2 run return run function worldedit:.dev/notification/region/required/error
execute unless score @s takis.tape.id matches 1.. run function worldedit:.dev/runtime/tape/assign/id
scoreboard players operation @s takis.tape.x1 = @s takis.fill.x1
scoreboard players operation @s takis.tape.y1 = @s takis.fill.y1
scoreboard players operation @s takis.tape.z1 = @s takis.fill.z1
scoreboard players operation @s takis.tape.x2 = @s takis.fill.x2
scoreboard players operation @s takis.tape.y2 = @s takis.fill.y2
scoreboard players operation @s takis.tape.z2 = @s takis.fill.z2
summon minecraft:marker ~ ~ ~ {Tags:["takis.tape_pos1"]}
scoreboard players operation @e[type=minecraft:marker,tag=takis.tape_pos1,limit=1,sort=nearest] takis.tape.id = @s takis.tape.id
function worldedit:.dev/runtime/tape/measure/create
