scoreboard players operation @s kingdom.previous = @s kingdom.current
scoreboard players set @s kingdom.current 0
execute unless score @s kingdom.current = @s kingdom.previous run function kingdom:.dev/generated/notify
function kingdom:.dev/leave
scoreboard players set @s kingdom.previous 0
scoreboard players set @s kingdom.inside 0
