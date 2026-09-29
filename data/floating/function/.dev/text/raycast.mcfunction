execute unless block ~ ~ ~ #minecart:minecart/path/clearance positioned ^ ^ ^-0.2 run function floating:.dev/text/spawn
execute unless block ~ ~ ~ #minecart:minecart/path/clearance run return 1
scoreboard players add @s takis.text.ray 1
execute if score @s takis.text.ray matches 24.. run function floating:.dev/text/spawn
execute if score @s takis.text.ray matches ..23 positioned ^ ^ ^0.25 run function floating:.dev/text/raycast
