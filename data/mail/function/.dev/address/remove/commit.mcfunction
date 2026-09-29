$data remove storage mail:mail addresses[{id:"$(id)",item_id:"minecraft:bundle"}]
$data remove storage mail:mail reserved_ids[{id:"$(id)"}]
$execute unless data storage mail:mail deleted_ids[{id:"$(id)"}] run data modify storage mail:mail deleted_ids append value {id:"$(id)"}
$scoreboard players reset $(id) mail.addresses
$execute as @e[type=minecraft:marker,tag=takis.mail_sender] at @s run data remove block ~ ~ ~ Items[{id:"minecraft:bundle",components:{"minecraft:custom_name":"$(id)"}}]
function mail:.dev/address/announce/removed with storage mail:mail input