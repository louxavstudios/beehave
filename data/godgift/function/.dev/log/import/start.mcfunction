data modify storage godgift:cultural import_work set value []
data modify storage godgift:cultural import_work set from storage godgift:cultural box_current
data modify storage godgift:cultural import_logs set value []
data modify storage godgift:cultural import_container set value []
data modify storage godgift:cultural import_block_items set value []
scoreboard players set #log.count takis.cultural 0
execute if data storage godgift:cultural import_work[0] run function godgift:.dev/log/import/next
data modify storage godgift:cultural global_logs set from storage godgift:cultural import_logs
data modify storage godgift:cultural global_container set from storage godgift:cultural import_container
data modify storage godgift:cultural global_block_items set from storage godgift:cultural import_block_items
function godgift:.dev/log/sync/all
