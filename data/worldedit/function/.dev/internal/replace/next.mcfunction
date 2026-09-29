execute unless data storage worldedit:runtime replace_queue[0] run return 0
data modify storage worldedit:runtime operation.replace set from storage worldedit:runtime replace_queue[0]
function worldedit:.dev/internal/replace/macro with storage worldedit:runtime operation
data remove storage worldedit:runtime replace_queue[0]
function worldedit:.dev/internal/replace/next
