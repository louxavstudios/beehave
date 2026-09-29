# Locate the damaged anvil that the player just opened. The explicit mainhand
# check in tick.mcfunction prevents offhand repairs.
scoreboard players set @s takis.anvil 0
scoreboard players set @s takis.ray 0
execute if items entity @s weapon.mainhand minecraft:iron_ingot at @s anchored eyes positioned ^ ^ ^0.1 run function anvil:.dev/repair/raycast
