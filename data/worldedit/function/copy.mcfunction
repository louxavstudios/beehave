execute unless score @s takis.fill.state matches 2 run return run function worldedit:.dev/notification/region/required/error
function worldedit:.dev/internal/prepare/region
function worldedit:.dev/internal/copy/macro with storage worldedit:runtime region
scoreboard players set @s worldedit.copy 1
function worldedit:.dev/notification/sound/run
