# Flood only connected empty blocks at or below this position. The operation
# aborts without changing blocks if the hole reaches its safety boundary.
kill @e[type=minecraft:marker,tag=worldedit.hole.node]
scoreboard players set #state worldedit.hole 1
scoreboard players set #count worldedit.hole 0
summon minecraft:marker ~ ~ ~ {Tags:["worldedit.hole.node","worldedit.hole.frontier"]}
execute store result score #origin.x worldedit.hole run data get entity @e[type=minecraft:marker,tag=worldedit.hole.frontier,distance=..1,limit=1,sort=nearest] Pos[0] 1
execute store result score #origin.y worldedit.hole run data get entity @e[type=minecraft:marker,tag=worldedit.hole.frontier,distance=..1,limit=1,sort=nearest] Pos[1] 1
execute store result score #origin.z worldedit.hole run data get entity @e[type=minecraft:marker,tag=worldedit.hole.frontier,distance=..1,limit=1,sort=nearest] Pos[2] 1
scoreboard players operation #bound.min.x worldedit.hole = #origin.x worldedit.hole
scoreboard players operation #bound.max.x worldedit.hole = #origin.x worldedit.hole
scoreboard players operation #bound.min.y worldedit.hole = #origin.y worldedit.hole
scoreboard players operation #bound.min.z worldedit.hole = #origin.z worldedit.hole
scoreboard players operation #bound.max.z worldedit.hole = #origin.z worldedit.hole
scoreboard players remove #bound.min.x worldedit.hole 15
scoreboard players add #bound.max.x worldedit.hole 15
scoreboard players remove #bound.min.y worldedit.hole 30
scoreboard players remove #bound.min.z worldedit.hole 15
scoreboard players add #bound.max.z worldedit.hole 15
scoreboard players operation #actual.min.x worldedit.hole = #origin.x worldedit.hole
scoreboard players operation #actual.max.x worldedit.hole = #origin.x worldedit.hole
scoreboard players operation #actual.min.y worldedit.hole = #origin.y worldedit.hole
scoreboard players operation #actual.max.y worldedit.hole = #origin.y worldedit.hole
scoreboard players operation #actual.min.z worldedit.hole = #origin.z worldedit.hole
scoreboard players operation #actual.max.z worldedit.hole = #origin.z worldedit.hole
execute unless block ~ ~ ~ #worldedit:hole/passable run function worldedit:.dev/hole/empty
execute unless block ~ ~ ~ #worldedit:hole/passable run return 0
function worldedit:.dev/hole/round
execute unless score #state worldedit.hole matches 1 run function worldedit:.dev/hole/fail
execute unless score #state worldedit.hole matches 1 run return 0
function worldedit:.dev/hole/finish
