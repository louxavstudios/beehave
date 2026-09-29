execute if data storage mail:mail address_work[0].item run data modify storage mail:mail address_template set from storage mail:mail address_work[0].item
execute if data storage mail:mail address_work[0].id run data modify storage mail:mail input.id set from storage mail:mail address_work[0].id
execute if data storage mail:mail address_work[0].item_id run data modify storage mail:mail input.item_id set from storage mail:mail address_work[0].item_id
execute if data storage mail:mail address_work[0].id if data storage mail:mail address_work[0].item_id run function mail:.dev/address/sync/one with storage mail:mail input
data remove storage mail:mail address_work[0]
execute if data storage mail:mail address_work[0] run function mail:.dev/address/sync/next
