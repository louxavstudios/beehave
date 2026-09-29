# Runs on the newly spawned projectile through Holy Fill's projectile effect.
scoreboard players set #valid worldedit.holy 0
execute on origin if entity @s[type=minecraft:player] if items entity @s weapon.offhand #worldedit:blocks run scoreboard players set #valid worldedit.holy 1
execute unless score #valid worldedit.holy matches 1 run function worldedit:.dev/hole/projectile/reject
execute unless score #valid worldedit.holy matches 1 run kill @s
execute unless score #valid worldedit.holy matches 1 run return 0
execute on origin unless score @s takis.fill.id matches 1.. run function worldedit:.dev/runtime/fill/helper/assign/id
execute on origin run scoreboard players operation #owner worldedit.holy = @s takis.fill.id
execute on origin store result score #cap worldedit.holy run data get entity @s Pos[1] 1
scoreboard players remove #cap worldedit.holy 1
execute on origin at @s run function worldedit:.dev/hole/projectile/cache
tag @e[type=minecraft:marker,tag=worldedit.holy.new] remove worldedit.holy.new
summon minecraft:marker ~ ~ ~ {Tags:["worldedit.holy.tracker","worldedit.holy.new"]}
scoreboard players operation @e[type=minecraft:marker,tag=worldedit.holy.new,distance=..1,limit=1,sort=nearest] worldedit.holy = #owner worldedit.holy
scoreboard players operation #tracker.cap worldedit.holy = #cap worldedit.holy
execute store result entity @e[type=minecraft:marker,tag=worldedit.holy.new,distance=..1,limit=1,sort=nearest] data.cap int 1 run scoreboard players get #tracker.cap worldedit.holy
data modify entity @e[type=minecraft:marker,tag=worldedit.holy.new,distance=..1,limit=1,sort=nearest] data.block set from storage worldedit:hole cached_block
ride @e[type=minecraft:marker,tag=worldedit.holy.new,distance=..1,limit=1,sort=nearest] mount @s
tag @e[type=minecraft:marker,tag=worldedit.holy.new,distance=..1,limit=1,sort=nearest] remove worldedit.holy.new
