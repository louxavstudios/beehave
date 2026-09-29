tag @e[type=minecraft:marker,tag=worldedit.hole.frontier] add worldedit.hole.current
tag @e[type=minecraft:marker,tag=worldedit.hole.current] remove worldedit.hole.frontier
execute as @e[type=minecraft:marker,tag=worldedit.hole.current] at @s if score #state worldedit.hole matches 1 run function worldedit:.dev/hole/expand
tag @e[type=minecraft:marker,tag=worldedit.hole.current] add worldedit.hole.visited
tag @e[type=minecraft:marker,tag=worldedit.hole.current] remove worldedit.hole.current
execute if score #state worldedit.hole matches 1 if entity @e[type=minecraft:marker,tag=worldedit.hole.frontier] run function worldedit:.dev/hole/round
