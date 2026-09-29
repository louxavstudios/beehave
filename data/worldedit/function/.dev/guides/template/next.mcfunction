data modify storage worldedit:guides block_items append from storage worldedit:guides template_work[0].item
execute store result storage worldedit:guides block_items[-1].Slot byte 1 run data get storage worldedit:guides template_work[0].slot
data remove storage worldedit:guides template_work[0]
execute if data storage worldedit:guides template_work[0] run function worldedit:.dev/guides/template/next
