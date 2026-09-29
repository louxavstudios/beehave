function worldedit:.dev/internal/history/save/undo
function worldedit:.dev/internal/prepare/region
data modify storage worldedit:runtime operation set from storage worldedit:runtime region
data modify storage worldedit:runtime operation.block set from storage worldedit:runtime args.block
data modify storage worldedit:runtime replace_queue set from storage worldedit:runtime args.replace
execute unless data storage worldedit:runtime replace_queue[0] run data modify storage worldedit:runtime replace_single set from storage worldedit:runtime replace_queue
execute unless data storage worldedit:runtime replace_queue[0] run data modify storage worldedit:runtime replace_queue set value []
execute if data storage worldedit:runtime replace_single run data modify storage worldedit:runtime replace_queue append from storage worldedit:runtime replace_single
data remove storage worldedit:runtime replace_single
function worldedit:.dev/internal/replace/next
function worldedit:.dev/notification/sound/run
