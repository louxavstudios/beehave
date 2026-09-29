execute if entity @e[type=minecraft:interaction,tag=takis.floating_text_hitbox,distance=..0.9,limit=1,sort=nearest] run tag @e[type=minecraft:interaction,tag=takis.floating_text_hitbox,distance=..0.9,limit=1,sort=nearest] add takis.floating_text_target
execute if entity @e[type=minecraft:interaction,tag=takis.floating_text_target,limit=1] run return 1
scoreboard players add @s takis.text.ray 1
execute if score @s takis.text.ray matches ..24 positioned ^ ^ ^0.25 run function floating:.dev/text/hit/raycast
