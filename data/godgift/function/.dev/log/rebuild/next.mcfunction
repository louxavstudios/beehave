data modify storage godgift:cultural rebuild_current set from storage godgift:cultural rebuild_work[0]
data remove storage godgift:cultural rebuild_work[0]
execute store result storage godgift:cultural rebuild_current.entry.slot int 1 run scoreboard players get #log.count takis.cultural
data modify storage godgift:cultural rebuild_current.entry.item.components."minecraft:custom_data".takis_cultural_log_entry set value true
data modify storage godgift:cultural rebuild_current.entry.item.components."minecraft:custom_data".owner set from storage godgift:cultural rebuild_current.owner
data modify storage godgift:cultural rebuild_block set from storage godgift:cultural rebuild_current.entry.item
execute store result storage godgift:cultural rebuild_block.Slot byte 1 run scoreboard players get #log.count takis.cultural
data modify storage godgift:cultural rebuild_logs append from storage godgift:cultural rebuild_current
data modify storage godgift:cultural rebuild_container append from storage godgift:cultural rebuild_current.entry
data modify storage godgift:cultural rebuild_block_items append from storage godgift:cultural rebuild_block
scoreboard players add #log.count takis.cultural 1
execute if data storage godgift:cultural rebuild_work[0] run function godgift:.dev/log/rebuild/next
