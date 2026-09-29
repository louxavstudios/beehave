execute store result storage worldedit:runtime region.x1 int 1 run scoreboard players get #actual.min.x worldedit.hole
execute store result storage worldedit:runtime region.y1 int 1 run scoreboard players get #actual.min.y worldedit.hole
execute store result storage worldedit:runtime region.z1 int 1 run scoreboard players get #actual.min.z worldedit.hole
execute store result storage worldedit:runtime region.x2 int 1 run scoreboard players get #actual.max.x worldedit.hole
execute store result storage worldedit:runtime region.y2 int 1 run scoreboard players get #actual.max.y worldedit.hole
execute store result storage worldedit:runtime region.z2 int 1 run scoreboard players get #actual.max.z worldedit.hole
execute store result storage worldedit:runtime region.id int 1 run scoreboard players get @s takis.fill.id
scoreboard players set #resource.ok worldedit.hole 1
execute if data storage worldedit:hole operation{consume:1b} run function worldedit:.dev/hole/resource/check
execute unless score #resource.ok worldedit.hole matches 1 run kill @e[type=minecraft:marker,tag=worldedit.hole.node]
execute unless score #resource.ok worldedit.hole matches 1 run return 0
function worldedit:.dev/internal/history/save/custom
execute if data storage worldedit:hole operation{consume:1b} run function worldedit:.dev/hole/resource/consume
execute as @e[type=minecraft:marker,tag=worldedit.hole.node] at @s run function worldedit:.dev/hole/set with storage worldedit:hole operation
title @s actionbar [{"text":"Filled ","color":"white"},{"score":{"name":"#count","objective":"worldedit.hole"},"color":"white"},{"text":" blocks.","color":"white"}]
function worldedit:.dev/notification/sound/run
kill @e[type=minecraft:marker,tag=worldedit.hole.node]
