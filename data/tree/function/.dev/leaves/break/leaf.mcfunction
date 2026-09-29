# Queue touching leaves before removing this one. All leaf species may connect.
function tree:.dev/leaves/seed/neighbors
# Use the vanilla non-Silk-Touch leaf loot path. This preserves each species'
# normal sapling odds instead of forcing every leaf to drop itself as shears do.
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:wooden_hoe
setblock ~ ~ ~ minecraft:air
scoreboard players add #count tree.mine 1
playsound minecraft:block.grass.break block @s ~ ~ ~ 0.3 1.0
