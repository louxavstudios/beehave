data modify storage guides:guides block_items append from storage guides:guides template_work[0].item
execute store result storage guides:guides block_items[-1].Slot byte 1 run data get storage guides:guides template_work[0].slot
data remove storage guides:guides template_work[0]
execute if data storage guides:guides template_work[0] run function guides:.dev/template/next
