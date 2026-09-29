execute unless score @s takis.fill.state matches 1.. run return run function worldedit:.dev/notification/fill/need/pos1/error
execute if score @s takis.fill.state matches 2 if score @s takis.fill.x2 = @s takis.fill.tx if score @s takis.fill.y2 = @s takis.fill.ty if score @s takis.fill.z2 = @s takis.fill.tz run return 0
scoreboard players operation @s takis.fill.x2 = @s takis.fill.tx
scoreboard players operation @s takis.fill.y2 = @s takis.fill.ty
scoreboard players operation @s takis.fill.z2 = @s takis.fill.tz
scoreboard players set @s takis.fill.state 2
function worldedit:.dev/notification/fill/pos2/success
function worldedit:.dev/runtime/fill/helper/complete
