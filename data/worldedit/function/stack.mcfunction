execute unless score @s takis.fill.state matches 2 run return run function worldedit:.dev/notification/region/required/error
$scoreboard players set @s worldedit.amount $(amount)
execute unless score @s worldedit.amount matches 1..64 run return 0
$function worldedit:.dev/internal/direction/$(direction)
function worldedit:.dev/internal/stack/prepare
