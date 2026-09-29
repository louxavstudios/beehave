function worldedit:.dev/internal/history/save/undo
data modify storage worldedit:runtime operation set from storage worldedit:runtime region
data modify storage worldedit:runtime operation.block set from storage worldedit:runtime args.block
execute store success score @s worldedit.result run function worldedit:.dev/internal/fill/macro with storage worldedit:runtime operation
execute if score @s worldedit.result matches 1.. run function worldedit:.dev/notification/sound/run
