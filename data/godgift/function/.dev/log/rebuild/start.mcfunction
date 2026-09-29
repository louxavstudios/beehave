data modify storage godgift:cultural rebuild_work set value []
data modify storage godgift:cultural rebuild_work set from storage godgift:cultural global_logs
data modify storage godgift:cultural rebuild_logs set value []
data modify storage godgift:cultural rebuild_container set value []
data modify storage godgift:cultural rebuild_block_items set value []
scoreboard players set #log.count takis.cultural 0
execute if data storage godgift:cultural rebuild_work[0] run function godgift:.dev/log/rebuild/next
data modify storage godgift:cultural global_logs set from storage godgift:cultural rebuild_logs
data modify storage godgift:cultural global_container set from storage godgift:cultural rebuild_container
data modify storage godgift:cultural global_block_items set from storage godgift:cultural rebuild_block_items
