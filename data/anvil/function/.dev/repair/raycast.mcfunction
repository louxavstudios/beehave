execute if score @s takis.anvil matches 0 if block ~ ~ ~ minecraft:damaged_anvil align xyz positioned ~0.5 ~0.5 ~0.5 run function anvil:.dev/repair/repair
execute if score @s takis.anvil matches 0 if block ~ ~ ~ minecraft:chipped_anvil align xyz positioned ~0.5 ~0.5 ~0.5 run function anvil:.dev/repair/repair
execute if score @s takis.anvil matches 0 if score @s takis.ray matches ..23 run scoreboard players add @s takis.ray 1
execute if score @s takis.anvil matches 0 if score @s takis.ray matches ..23 positioned ^ ^ ^0.25 run function anvil:.dev/repair/raycast
