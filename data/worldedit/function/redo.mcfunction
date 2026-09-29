execute unless score @s worldedit.redo matches 1 run return run tellraw @s {"text":"WorldEdit: nothing to redo","color":"gray"}
function worldedit:.dev/internal/history/bounds/load
function worldedit:.dev/internal/history/save/undo/macro with storage worldedit:runtime history
execute unless score @s worldedit.result matches 1 run return 0
function worldedit:.dev/internal/history/load/redo/macro with storage worldedit:runtime history
execute if score @s worldedit.result matches 1 run scoreboard players set @s worldedit.undo 1
execute if score @s worldedit.result matches 1 run scoreboard players set @s worldedit.redo 0
execute if score @s worldedit.result matches 1 run function worldedit:.dev/notification/sound/run
