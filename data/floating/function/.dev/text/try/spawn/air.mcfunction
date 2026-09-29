execute if score @s takis.text.cool matches 1.. run return 0
tag @e[type=minecraft:text_display,tag=takis.floating_text_new] remove takis.floating_text_new
tag @e[type=minecraft:interaction,tag=takis.floating_text_hitbox_new] remove takis.floating_text_hitbox_new
# A block in reach wins; genuine open air falls back to the player.
scoreboard players set @s takis.text.ray 0
execute at @s anchored eyes positioned ^ ^ ^0.2 run function floating:.dev/text/context/raycast
scoreboard players set @s takis.text.cool 4
