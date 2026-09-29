function worldedit:.dev/internal/prepare/region
function worldedit:.dev/internal/direction/offset
scoreboard players operation @s worldedit.dx *= @s worldedit.size.x
scoreboard players operation @s worldedit.dy *= @s worldedit.size.y
scoreboard players operation @s worldedit.dz *= @s worldedit.size.z
# Snapshot the original plus every destination before creating copies.
scoreboard players operation @s worldedit.dx *= @s worldedit.amount
scoreboard players operation @s worldedit.dy *= @s worldedit.amount
scoreboard players operation @s worldedit.dz *= @s worldedit.amount
function worldedit:.dev/internal/history/region/union
function worldedit:.dev/internal/history/save/custom
scoreboard players operation @s worldedit.dx /= @s worldedit.amount
scoreboard players operation @s worldedit.dy /= @s worldedit.amount
scoreboard players operation @s worldedit.dz /= @s worldedit.amount
function worldedit:.dev/internal/stack/next
function worldedit:.dev/internal/selection/render
function worldedit:.dev/notification/sound/run
