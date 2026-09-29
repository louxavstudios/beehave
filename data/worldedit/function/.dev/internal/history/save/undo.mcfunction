function worldedit:.dev/internal/prepare/region
function worldedit:.dev/internal/history/bounds/store
scoreboard players set @s worldedit.undo 0
function worldedit:.dev/internal/history/save/undo/macro with storage worldedit:runtime region
execute if score @s worldedit.result matches 1 run scoreboard players set @s worldedit.undo 1
execute if score @s worldedit.result matches 1 run scoreboard players set @s worldedit.redo 0
