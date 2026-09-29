# Display the contextual repair instruction for repairable anvils.
execute if block ~ ~ ~ minecraft:damaged_anvil run function notice:.dev/anvil/repair/hint/tip
execute if block ~ ~ ~ minecraft:chipped_anvil run function notice:.dev/anvil/repair/hint/tip

# Continue through air for approximately five blocks, stopping at solid walls.
execute if block ~ ~ ~ minecraft:air if score @s takis.ray matches ..19 run scoreboard players add @s takis.ray 1
execute if block ~ ~ ~ minecraft:air if score @s takis.ray matches ..19 positioned ^ ^ ^0.25 run function anvil:.dev/repair/hint/raycast
