# One-time migrations and integrity checks run once per second.
execute as @e[type=minecraft:marker,tag=takis.mail_sender,tag=!takis.mail_cleanup_v1] at @s if block ~ ~ ~ minecraft:barrel run data remove block ~ ~ ~ Items
execute as @e[type=minecraft:marker,tag=takis.mail_receiver,tag=!takis.mail_cleanup_v1] at @s if block ~ ~ ~ minecraft:barrel run data remove block ~ ~ ~ Items
tag @e[type=minecraft:marker,tag=takis.mail_sender,tag=!takis.mail_cleanup_v1] add takis.mail_cleanup_v1
tag @e[type=minecraft:marker,tag=takis.mail_receiver,tag=!takis.mail_cleanup_v1] add takis.mail_cleanup_v1

execute as @e[type=minecraft:marker,tag=takis.mail_sender,tag=!takis.mail_inventory_repaired] at @s if block ~ ~ ~ minecraft:barrel run function mail:.dev/repair/inventory
execute as @e[type=minecraft:marker,tag=takis.mail_receiver,tag=!takis.mail_inventory_repaired] at @s if block ~ ~ ~ minecraft:barrel run function mail:.dev/repair/inventory
tag @e[type=minecraft:marker,tag=takis.mail_sender,tag=!takis.mail_inventory_repaired] add takis.mail_inventory_repaired
tag @e[type=minecraft:marker,tag=takis.mail_receiver,tag=!takis.mail_inventory_repaired] add takis.mail_inventory_repaired

scoreboard players add #bundles.only.migration mail.addresses 0
execute if score #bundles.only.migration mail.addresses matches 0 run function mail:.dev/migrate/bundles/only

execute as @e[type=minecraft:marker,tag=takis.mail_sender] at @s unless block ~ ~ ~ minecraft:barrel run kill @s
execute as @e[type=minecraft:marker,tag=takis.mail_sender] at @s unless data block ~ ~ ~ {CustomName:"Mailbox"} run kill @s
execute as @e[type=minecraft:marker,tag=takis.mail_receiver] at @s run function mail:.dev/maintain/receiver with entity @s data
execute as @e[type=minecraft:marker,tag=takis.mail_sender] at @s unless data entity @s data.last_addresses run function mail:.dev/address/snapshot

execute as @a if items entity @s weapon.mainhand minecraft:bundle if data entity @s SelectedItem.components."minecraft:custom_name" run function mail:.dev/address/held/mainhand
execute as @a if items entity @s weapon.offhand minecraft:bundle if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_name" run function mail:.dev/address/held/offhand

scoreboard players add #network.initialized mail.addresses 0
scoreboard players add #richest.sync.v1 mail.addresses 0
execute if score #richest.sync.v1 mail.addresses matches 0 run scoreboard players set #network.initialized mail.addresses 0
function mail:.dev/address/election/start
