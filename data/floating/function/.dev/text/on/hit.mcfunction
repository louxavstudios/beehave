advancement revoke @s only floating:text/hit
scoreboard players set @s takis.text.ray 0
tag @e[type=minecraft:interaction,tag=takis.floating_text_target] remove takis.floating_text_target
execute at @s anchored eyes positioned ^ ^ ^0.1 run function floating:.dev/text/hit/raycast
execute unless entity @e[type=minecraft:interaction,tag=takis.floating_text_target,limit=1] at @s run function floating:.dev/text/hit/nearest
execute if entity @e[type=minecraft:interaction,tag=takis.floating_text_target,limit=1] run function floating:.dev/text/remove
