data modify storage godgift:cultural selected_logs set value []
data modify storage godgift:cultural filter_work set value []
data modify storage godgift:cultural filter_work set from storage godgift:cultural global_logs
scoreboard players set #filter.count takis.cultural 0
execute store result score #target0 takis.cultural run data get storage godgift:cultural target_uuid[0]
execute store result score #target1 takis.cultural run data get storage godgift:cultural target_uuid[1]
execute store result score #target2 takis.cultural run data get storage godgift:cultural target_uuid[2]
execute store result score #target3 takis.cultural run data get storage godgift:cultural target_uuid[3]
execute if data storage godgift:cultural filter_work[0] run function godgift:.dev/log/filter/next
function godgift:.dev/log/give/box
