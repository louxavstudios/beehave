advancement revoke @s only worldedit:tape/hit
scoreboard players set @s takis.tape.ray 0
tag @e[type=minecraft:interaction,tag=takis.tape_target] remove takis.tape_target
execute at @s anchored eyes positioned ^ ^ ^0.1 run function worldedit:.dev/runtime/tape/remove/raycast
execute unless entity @e[type=minecraft:interaction,tag=takis.tape_target,limit=1] at @s run tag @e[type=minecraft:interaction,tag=takis.tape_hitbox,distance=..6,limit=1,sort=nearest] add takis.tape_target
execute if entity @e[type=minecraft:interaction,tag=takis.tape_target,limit=1] run function worldedit:.dev/runtime/tape/remove/measure
