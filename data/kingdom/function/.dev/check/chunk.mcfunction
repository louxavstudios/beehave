function kingdom:.dev/read/chunk
execute if score @s kingdom.inside matches 0 run return run function kingdom:.dev/update/chunk
execute unless score @s kingdom.block.x = @s kingdom.chunk.x run return run function kingdom:.dev/update/chunk
execute unless score @s kingdom.block.z = @s kingdom.chunk.z run function kingdom:.dev/update/chunk
