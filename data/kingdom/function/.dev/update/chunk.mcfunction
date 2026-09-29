scoreboard players operation @s kingdom.previous = @s kingdom.current
scoreboard players operation @s kingdom.chunk.x = @s kingdom.block.x
scoreboard players operation @s kingdom.chunk.z = @s kingdom.block.z
scoreboard players set @s kingdom.current 0
function kingdom:.dev/generated/lookup
execute unless score @s kingdom.current = @s kingdom.previous run function kingdom:.dev/generated/notify
execute if score @s kingdom.current matches 0 run function kingdom:.dev/leave
function kingdom:.dev/generated/apply/access
scoreboard players operation @s kingdom.previous = @s kingdom.current
scoreboard players set @s kingdom.inside 1
