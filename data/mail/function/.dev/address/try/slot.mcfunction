scoreboard players set #mail.valid mailbox_ids 0
data remove storage mail:mail input.id
data remove storage mail:mail input.item_id
$data modify storage mail:mail input.slot set value $(slot)
$execute if items block ~ ~ ~ container.$(slot) minecraft:bundle if data block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_name" run data modify storage mail:mail input.id set from block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_name"
$execute if items block ~ ~ ~ container.$(slot) minecraft:bundle if data block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_name" run data modify storage mail:mail input.item_id set from block ~ ~ ~ Items[{Slot:$(slot)b}].id
$execute if items block ~ ~ ~ container.$(slot) minecraft:bundle if data block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_name" run function mail:.dev/validate/start
execute if score #mail.valid mailbox_ids matches 1 if data storage mail:mail input.item_id run function mail:.dev/address/register with storage mail:mail input
