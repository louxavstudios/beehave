$execute if block ~ ~ ~ minecraft:barrel if data block ~ ~ ~ {CustomName:"$(mailbox_id)"} run data remove storage mail:mail reserved_ids[{id:"$(mailbox_id)"}]
$execute if block ~ ~ ~ minecraft:barrel if data block ~ ~ ~ {CustomName:"$(mailbox_id)"} run scoreboard players set $(mailbox_id) mailbox_ids 1
$execute unless block ~ ~ ~ minecraft:barrel if data storage mail:mail addresses[{id:"$(mailbox_id)"}] unless data storage mail:mail reserved_ids[{id:"$(mailbox_id)"}] run data modify storage mail:mail reserved_ids append value {id:"$(mailbox_id)"}
$execute if block ~ ~ ~ minecraft:barrel unless data block ~ ~ ~ {CustomName:"$(mailbox_id)"} if data storage mail:mail addresses[{id:"$(mailbox_id)"}] unless data storage mail:mail reserved_ids[{id:"$(mailbox_id)"}] run data modify storage mail:mail reserved_ids append value {id:"$(mailbox_id)"}
$execute unless block ~ ~ ~ minecraft:barrel unless data storage mail:mail addresses[{id:"$(mailbox_id)"}] run scoreboard players reset $(mailbox_id) mailbox_ids
$execute if block ~ ~ ~ minecraft:barrel unless data block ~ ~ ~ {CustomName:"$(mailbox_id)"} unless data storage mail:mail addresses[{id:"$(mailbox_id)"}] run scoreboard players reset $(mailbox_id) mailbox_ids
execute unless block ~ ~ ~ minecraft:barrel run kill @s
$execute if block ~ ~ ~ minecraft:barrel unless data block ~ ~ ~ {CustomName:"$(mailbox_id)"} run kill @s
