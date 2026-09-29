scoreboard players set #mail.receiver.exists mailbox_ids 0
$execute if score $(id) mailbox_ids matches 1 unless data storage mail:mail reserved_ids[{id:"$(id)"}] run scoreboard players set #mail.receiver.exists mailbox_ids 1
$execute as @e[type=minecraft:marker,tag=takis.mail_receiver] if data entity @s data{mailbox_id:"$(id)"} run scoreboard players set #mail.receiver.exists mailbox_ids 1
$execute if score #mail.receiver.exists mailbox_ids matches 0 run summon minecraft:marker ~ ~ ~ {Tags:["takis.mail_receiver","takis.mail_cleanup_v1"],data:{mailbox_id:"$(id)"}}
$execute as @e[type=minecraft:marker,tag=takis.mail_receiver] if data entity @s data{mailbox_id:"$(id)"} run data remove storage mail:mail reserved_ids[{id:"$(id)"}]
$scoreboard players set $(id) mailbox_ids 1
