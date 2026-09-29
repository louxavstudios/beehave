# Only an actually open sender joins the fast settling queue.
tag @e[type=minecraft:marker,tag=takis.mail_new_active] remove takis.mail_new_active
execute as @e[type=minecraft:marker,tag=takis.mail_sender,tag=!takis.mail_active] at @s if block ~ ~ ~ minecraft:barrel[open=true] run tag @s add takis.mail_new_active
tag @e[type=minecraft:marker,tag=takis.mail_new_active] add takis.mail_active
execute as @e[type=minecraft:marker,tag=takis.mail_sender,tag=takis.mail_active] at @s if block ~ ~ ~ minecraft:barrel[open=true] run scoreboard players set @s mailbox_ids 10
execute as @e[type=minecraft:marker,tag=takis.mail_sender,tag=takis.mail_active] at @s if score #network.initialized mail.addresses matches 1 if block ~ ~ ~ minecraft:barrel[open=true] if data entity @s data.last_addresses run function mail:.dev/address/detect/removed
execute as @e[type=minecraft:marker,tag=takis.mail_sender,tag=takis.mail_active] at @s if score #network.initialized mail.addresses matches 1 if block ~ ~ ~ minecraft:barrel[open=true] if data entity @s data.last_addresses run function mail:.dev/address/detect/readded
execute as @e[type=minecraft:marker,tag=takis.mail_sender,tag=takis.mail_active] at @s if score #network.initialized mail.addresses matches 1 if block ~ ~ ~ minecraft:barrel[open=true] run function mail:.dev/address/apply/deleted
execute as @e[type=minecraft:marker,tag=takis.mail_sender,tag=takis.mail_active] at @s if score #network.initialized mail.addresses matches 1 if block ~ ~ ~ minecraft:barrel[open=true] run function mail:.dev/address/scan
execute as @e[type=minecraft:marker,tag=takis.mail_new_active] at @s if score #network.initialized mail.addresses matches 1 run function mail:.dev/address/sync/registry
execute as @e[type=minecraft:marker,tag=takis.mail_sender,tag=takis.mail_active] at @s if score #network.initialized mail.addresses matches 1 if block ~ ~ ~ minecraft:barrel[open=true] run function mail:.dev/address/snapshot
tag @e[type=minecraft:marker,tag=takis.mail_new_active] remove takis.mail_new_active
