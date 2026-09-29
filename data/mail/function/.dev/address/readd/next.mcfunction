data remove storage mail:mail input.id
data modify storage mail:mail current_item set from storage mail:mail current_work[0]
execute if data storage mail:mail current_item{id:"minecraft:bundle"} if data storage mail:mail current_item.components."minecraft:custom_name" run data modify storage mail:mail input.id set from storage mail:mail current_item.components."minecraft:custom_name"
execute if data storage mail:mail input.id run function mail:.dev/address/check/readded with storage mail:mail input
data remove storage mail:mail current_work[0]
execute if data storage mail:mail current_work[0] run function mail:.dev/address/readd/next
