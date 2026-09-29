execute store result score @s worldedit.hole run data get entity @s Pos[0] 1
execute store result score #node.y worldedit.hole run data get entity @s Pos[1] 1
execute store result score #node.z worldedit.hole run data get entity @s Pos[2] 1
scoreboard players add #count worldedit.hole 1
execute if score @s worldedit.hole <= #bound.min.x worldedit.hole run scoreboard players set #state worldedit.hole 0
execute if score @s worldedit.hole >= #bound.max.x worldedit.hole run scoreboard players set #state worldedit.hole 0
execute if score #node.y worldedit.hole <= #bound.min.y worldedit.hole run scoreboard players set #state worldedit.hole 0
execute if score #node.z worldedit.hole <= #bound.min.z worldedit.hole run scoreboard players set #state worldedit.hole 0
execute if score #node.z worldedit.hole >= #bound.max.z worldedit.hole run scoreboard players set #state worldedit.hole 0
execute if score #count worldedit.hole matches 4096.. run scoreboard players set #state worldedit.hole 0
execute if score @s worldedit.hole < #actual.min.x worldedit.hole run scoreboard players operation #actual.min.x worldedit.hole = @s worldedit.hole
execute if score @s worldedit.hole > #actual.max.x worldedit.hole run scoreboard players operation #actual.max.x worldedit.hole = @s worldedit.hole
execute if score #node.y worldedit.hole < #actual.min.y worldedit.hole run scoreboard players operation #actual.min.y worldedit.hole = #node.y worldedit.hole
execute if score #node.y worldedit.hole > #actual.max.y worldedit.hole run scoreboard players operation #actual.max.y worldedit.hole = #node.y worldedit.hole
execute if score #node.z worldedit.hole < #actual.min.z worldedit.hole run scoreboard players operation #actual.min.z worldedit.hole = #node.z worldedit.hole
execute if score #node.z worldedit.hole > #actual.max.z worldedit.hole run scoreboard players operation #actual.max.z worldedit.hole = #node.z worldedit.hole
execute if score #state worldedit.hole matches 1 positioned ~1 ~ ~ run function worldedit:.dev/hole/candidate
execute if score #state worldedit.hole matches 1 positioned ~-1 ~ ~ run function worldedit:.dev/hole/candidate
execute if score #state worldedit.hole matches 1 positioned ~ ~ ~1 run function worldedit:.dev/hole/candidate
execute if score #state worldedit.hole matches 1 positioned ~ ~ ~-1 run function worldedit:.dev/hole/candidate
execute if score #state worldedit.hole matches 1 positioned ~ ~-1 ~ run function worldedit:.dev/hole/candidate
