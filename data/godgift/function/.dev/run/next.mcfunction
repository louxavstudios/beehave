# Run one non-empty page, then continue through the remaining pages in order.
data remove storage godgift:cultural command
data remove storage godgift:cultural command_raw
data modify storage godgift:cultural command_raw set from storage godgift:cultural command_pages[0].raw
data remove storage godgift:cultural command_pages[0]
execute store result score #command.length takis.cultural run data get storage godgift:cultural command_raw
execute if score #command.length takis.cultural matches 1.. run function godgift:.dev/normalize
execute if data storage godgift:cultural command if score @s takis.cultural matches 2 run function godgift:.dev/activate/mainhand
execute if data storage godgift:cultural command if score @s takis.cultural matches 3 run function godgift:.dev/activate/offhand
execute if data storage godgift:cultural command run function godgift:.dev/log/start
execute if data storage godgift:cultural command run function godgift:.dev/run with storage godgift:cultural
execute if data storage godgift:cultural command_pages[0] run function godgift:.dev/run/next
