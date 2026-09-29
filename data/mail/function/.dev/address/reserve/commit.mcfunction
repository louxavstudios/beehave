data remove storage mail:mail address_template.components."minecraft:bundle_contents"
data remove storage mail:mail address_template.components."minecraft:container"
data remove storage mail:mail address_template.Slot
data modify storage mail:mail address_template.count set value 1
$data modify storage mail:mail address_entry set value {id:"$(id)",item_id:"minecraft:bundle"}
data modify storage mail:mail address_entry.item set from storage mail:mail address_template
data modify storage mail:mail addresses append from storage mail:mail address_entry
function mail:.dev/address/sync/one with storage mail:mail input
$scoreboard players set $(id) mail.addresses 1
execute if score #network.initialized mail.addresses matches 1 run function mail:.dev/address/announce/registered with storage mail:mail input
