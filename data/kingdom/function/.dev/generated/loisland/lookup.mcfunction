# Generated from reference/loisland.csv.
# Sets kingdom.current to 4 for occupied chunks.
execute if score @s kingdom.chunk.x matches -48..-33 run function kingdom:.dev/generated/loisland/group/0
execute if score @s kingdom.chunk.x matches -32..-17 run function kingdom:.dev/generated/loisland/group/1
execute if score @s kingdom.chunk.x matches -16 run function kingdom:.dev/generated/loisland/group/2
