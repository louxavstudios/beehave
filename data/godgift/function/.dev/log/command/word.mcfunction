$data modify storage godgift:cultural command_character set string storage godgift:cultural command_raw $(i) $(j)
$execute if data storage godgift:cultural {command_character:" "} run data modify storage godgift:cultural log_date.command_label set string storage godgift:cultural command_raw 0 $(i)
execute if data storage godgift:cultural {command_character:" "} run return 0
scoreboard players add #command.index takis.cultural 1
scoreboard players add #command.next takis.cultural 1
execute store result storage godgift:cultural command_scan.i int 1 run scoreboard players get #command.index takis.cultural
execute store result storage godgift:cultural command_scan.j int 1 run scoreboard players get #command.next takis.cultural
execute if score #command.index takis.cultural < #command.length takis.cultural run function godgift:.dev/log/command/word with storage godgift:cultural command_scan
