scoreboard players set #log.count takis.cultural 0
execute unless data storage godgift:cultural global_logs run data modify storage godgift:cultural global_logs set value []
execute unless data storage godgift:cultural global_container run data modify storage godgift:cultural global_container set value []
execute unless data storage godgift:cultural global_block_items run data modify storage godgift:cultural global_block_items set value []
execute store result score #log.count takis.cultural run data get storage godgift:cultural global_logs
execute if score #log.count takis.cultural matches 27.. run data modify storage godgift:cultural global_logs set value []
execute if score #log.count takis.cultural matches 27.. run data modify storage godgift:cultural global_container set value []
execute if score #log.count takis.cultural matches 27.. run data modify storage godgift:cultural global_block_items set value []
execute if score #log.count takis.cultural matches 27.. run scoreboard players set #log.count takis.cultural 0
function clock:.dev/calculate
execute store result storage godgift:cultural log_date.year int 1 run scoreboard players get #YEAR calendar
execute store result storage godgift:cultural log_date.month int 1 run scoreboard players get #MONTH calendar
execute store result storage godgift:cultural log_date.day int 1 run scoreboard players get #DAY calendar
data modify storage godgift:cultural log_date.month_name set value "January"
execute if score #MONTH calendar matches 2 run data modify storage godgift:cultural log_date.month_name set value "February"
execute if score #MONTH calendar matches 3 run data modify storage godgift:cultural log_date.month_name set value "March"
execute if score #MONTH calendar matches 4 run data modify storage godgift:cultural log_date.month_name set value "April"
execute if score #MONTH calendar matches 5 run data modify storage godgift:cultural log_date.month_name set value "May"
execute if score #MONTH calendar matches 6 run data modify storage godgift:cultural log_date.month_name set value "June"
execute if score #MONTH calendar matches 7 run data modify storage godgift:cultural log_date.month_name set value "July"
execute if score #MONTH calendar matches 8 run data modify storage godgift:cultural log_date.month_name set value "August"
execute if score #MONTH calendar matches 9 run data modify storage godgift:cultural log_date.month_name set value "September"
execute if score #MONTH calendar matches 10 run data modify storage godgift:cultural log_date.month_name set value "October"
execute if score #MONTH calendar matches 11 run data modify storage godgift:cultural log_date.month_name set value "November"
execute if score #MONTH calendar matches 12 run data modify storage godgift:cultural log_date.month_name set value "December"
execute store result storage godgift:cultural log_date.x int 1 run data get entity @s Pos[0]
execute store result storage godgift:cultural log_date.y int 1 run data get entity @s Pos[1]
execute store result storage godgift:cultural log_date.z int 1 run data get entity @s Pos[2]
execute store result storage godgift:cultural log_date.u0 int 1 run data get entity @s UUID[0]
execute store result storage godgift:cultural log_date.u1 int 1 run data get entity @s UUID[1]
execute store result storage godgift:cultural log_date.u2 int 1 run data get entity @s UUID[2]
execute store result storage godgift:cultural log_date.u3 int 1 run data get entity @s UUID[3]
# Resolve the executor's real profile name through a temporary player head.
data remove storage godgift:cultural record
data remove storage godgift:cultural log_date.player
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{takis_log_identity:true}}}}]
execute at @s run loot spawn ~ ~0.25 ~ loot godgift:player_identity
data modify storage godgift:cultural log_date.player set from entity @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{takis_log_identity:true}}}},sort=nearest,limit=1] Item.components."minecraft:profile".name
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{takis_log_identity:true}}}}]
execute unless data storage godgift:cultural log_date.player run data modify storage godgift:cultural log_date.player set value "Unknown Player"
# Use only the first command word in the book title, while retaining the exact
# complete command on the page itself.
data modify storage godgift:cultural log_date.command_label set from storage godgift:cultural command_raw
execute store result score #command.length takis.cultural run data get storage godgift:cultural command_raw
scoreboard players set #command.index takis.cultural 0
scoreboard players set #command.next takis.cultural 1
execute store result storage godgift:cultural command_scan.i int 1 run scoreboard players get #command.index takis.cultural
execute store result storage godgift:cultural command_scan.j int 1 run scoreboard players get #command.next takis.cultural
execute if score #command.length takis.cultural matches 1.. run function godgift:.dev/log/command/word with storage godgift:cultural command_scan
data modify storage godgift:cultural log_date.command set from storage godgift:cultural command_raw
function godgift:.dev/log/record/make with storage godgift:cultural log_date
execute store result storage godgift:cultural record.entry.slot int 1 run scoreboard players get #log.count takis.cultural
data modify storage godgift:cultural record.entry.item.components."minecraft:written_book_content".pages[0].raw[6].text set from storage godgift:cultural log_date.player
data modify storage godgift:cultural record.entry.item.components."minecraft:written_book_content".pages[0].raw[14].text set from storage godgift:cultural command_raw
data modify storage godgift:cultural global_logs append from storage godgift:cultural record
data modify storage godgift:cultural global_container append from storage godgift:cultural record.entry
data modify storage godgift:cultural block_item set from storage godgift:cultural record.entry.item
execute store result storage godgift:cultural block_item.Slot byte 1 run scoreboard players get #log.count takis.cultural
data modify storage godgift:cultural global_block_items append from storage godgift:cultural block_item
function godgift:.dev/log/sync/all
