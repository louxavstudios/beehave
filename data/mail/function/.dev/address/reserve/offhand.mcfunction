$execute if data storage mail:mail deleted_ids[{id:"$(id)"}] run return 0
$execute unless score $(id) mailbox_ids matches 1 unless data storage mail:mail reserved_ids[{id:"$(id)"}] run data modify storage mail:mail reserved_ids append value {id:"$(id)"}
$scoreboard players set $(id) mailbox_ids 1
$execute unless data storage mail:mail addresses[{id:"$(id)",item_id:"minecraft:bundle"}] run data modify storage mail:mail address_template set from entity @s Inventory[{Slot:-106b}]
execute unless data storage mail:mail addresses[{id:"$(id)",item_id:"minecraft:bundle"}] run function mail:.dev/address/reserve/commit with storage mail:mail input
