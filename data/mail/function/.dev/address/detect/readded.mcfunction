data modify storage mail:mail current_work set value []
data modify storage mail:mail current_work set from block ~ ~ ~ Items
execute if data storage mail:mail current_work[0] run function mail:.dev/address/readd/next