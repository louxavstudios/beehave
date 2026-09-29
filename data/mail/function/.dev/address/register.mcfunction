scoreboard players set #mail.new.address mailbox_ids 0
$execute if data storage mail:mail deleted_ids[{id:"$(id)"}] run return 0
$execute unless score $(id) mailbox_ids matches 1 unless data storage mail:mail reserved_ids[{id:"$(id)"}] run data modify storage mail:mail reserved_ids append value {id:"$(id)"}
$scoreboard players set $(id) mailbox_ids 1
$execute if score $(id) mailbox_ids matches 1 unless data storage mail:mail addresses[{id:"$(id)",item_id:"$(item_id)"}] run scoreboard players set #mail.new.address mailbox_ids 1
$execute if score #mail.new.address mailbox_ids matches 1 run data modify storage mail:mail address_template set from block ~ ~ ~ Items[{Slot:$(slot)b}]
execute if score #mail.new.address mailbox_ids matches 1 run data remove storage mail:mail address_template.components."minecraft:bundle_contents"
execute if score #mail.new.address mailbox_ids matches 1 run data remove storage mail:mail address_template.components."minecraft:container"
execute if score #mail.new.address mailbox_ids matches 1 run data modify storage mail:mail address_template.count set value 1
$execute if score #mail.new.address mailbox_ids matches 1 run data modify storage mail:mail address_entry set value {id:"$(id)",item_id:"$(item_id)"}
execute if score #mail.new.address mailbox_ids matches 1 run data modify storage mail:mail address_entry.item set from storage mail:mail address_template
execute if score #mail.new.address mailbox_ids matches 1 run data modify storage mail:mail addresses append from storage mail:mail address_entry
execute if score #mail.new.address mailbox_ids matches 1 run function mail:.dev/address/sync/one with storage mail:mail input
$execute if score #mail.new.address mailbox_ids matches 1 run scoreboard players set $(id) mail.addresses 1
execute if score #mail.new.address mailbox_ids matches 1 if score #network.initialized mail.addresses matches 1 run function mail:.dev/address/announce/registered with storage mail:mail input
