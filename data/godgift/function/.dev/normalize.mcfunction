data remove storage godgift:cultural command
data remove storage godgift:cultural first_character
data modify storage godgift:cultural first_character set string storage godgift:cultural command_raw 0 1
execute if data storage godgift:cultural {first_character:"/"} run data modify storage godgift:cultural command set string storage godgift:cultural command_raw 1
execute unless data storage godgift:cultural {first_character:"/"} run data modify storage godgift:cultural command set from storage godgift:cultural command_raw
