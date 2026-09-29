execute unless score @s takis.fill.state matches 2 run return run function worldedit:.dev/notification/region/required/error
$data modify storage worldedit:runtime args set value {block:"$(block)"}
function worldedit:.dev/internal/walls
