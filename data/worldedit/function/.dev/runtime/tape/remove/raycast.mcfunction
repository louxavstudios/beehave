execute if entity @e[type=minecraft:interaction,tag=takis.tape_hitbox,distance=..0.55,limit=1,sort=nearest] run tag @e[type=minecraft:interaction,tag=takis.tape_hitbox,distance=..0.55,limit=1,sort=nearest] add takis.tape_target
execute if entity @e[type=minecraft:interaction,tag=takis.tape_target,limit=1] run return 1
scoreboard players add @s takis.tape.ray 1
execute if score @s takis.tape.ray matches ..24 positioned ^ ^ ^0.25 run function worldedit:.dev/runtime/tape/remove/raycast
