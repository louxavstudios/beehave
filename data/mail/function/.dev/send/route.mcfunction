$execute if score $(id) mail.addresses matches 1 as @e[type=minecraft:marker,tag=takis.mail_receiver] if data entity @s data{mailbox_id:"$(id)"} at @s run function mail:.dev/send/deliver
