data remove storage mail:mail input
data modify storage mail:mail input.id set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_name"
data modify storage mail:mail input.item_id set value "minecraft:bundle"
function mail:.dev/validate/start
execute if score #mail.valid mailbox_ids matches 1 run function mail:.dev/address/reserve/offhand with storage mail:mail input
