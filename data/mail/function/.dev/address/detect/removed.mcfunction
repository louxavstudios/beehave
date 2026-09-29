data modify storage mail:mail removed_work set value []
data modify storage mail:mail removed_work set from entity @s data.last_addresses
execute if data storage mail:mail removed_work[0] run function mail:.dev/address/remove/next