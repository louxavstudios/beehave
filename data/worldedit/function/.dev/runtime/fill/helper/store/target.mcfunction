tag @e[type=minecraft:marker,tag=takis.fill_coordinate] remove takis.fill_coordinate
summon minecraft:marker ~ ~ ~ {Tags:["takis.fill_coordinate"]}
execute store result score @s takis.fill.tx run data get entity @e[type=minecraft:marker,tag=takis.fill_coordinate,limit=1,sort=nearest] Pos[0]
execute store result score @s takis.fill.ty run data get entity @e[type=minecraft:marker,tag=takis.fill_coordinate,limit=1,sort=nearest] Pos[1]
execute store result score @s takis.fill.tz run data get entity @e[type=minecraft:marker,tag=takis.fill_coordinate,limit=1,sort=nearest] Pos[2]
kill @e[type=minecraft:marker,tag=takis.fill_coordinate]
scoreboard players set @s takis.fill.found 1
