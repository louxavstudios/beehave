data modify storage godgift:cultural import_current set from storage godgift:cultural import_work[0]
data remove storage godgift:cultural import_work[0]
data modify storage godgift:cultural import_entry set value {slot:0,item:{id:"minecraft:air",count:1}}
data modify storage godgift:cultural import_entry.item set from storage godgift:cultural import_current
data remove storage godgift:cultural import_entry.item.Slot
execute store result storage godgift:cultural import_entry.slot int 1 run scoreboard players get #log.count takis.cultural
data modify storage godgift:cultural import_record set value {owner:[I;0,0,0,0],entry:{}}
data modify storage godgift:cultural import_record.entry set from storage godgift:cultural import_entry
data modify storage godgift:cultural import_record.owner set from storage godgift:cultural import_entry.item.components."minecraft:custom_data".owner
data modify storage godgift:cultural import_block set from storage godgift:cultural import_entry.item
execute store result storage godgift:cultural import_block.Slot byte 1 run scoreboard players get #log.count takis.cultural
data modify storage godgift:cultural import_logs append from storage godgift:cultural import_record
data modify storage godgift:cultural import_container append from storage godgift:cultural import_entry
data modify storage godgift:cultural import_block_items append from storage godgift:cultural import_block
scoreboard players add #log.count takis.cultural 1
execute if data storage godgift:cultural import_work[0] run function godgift:.dev/log/import/next
