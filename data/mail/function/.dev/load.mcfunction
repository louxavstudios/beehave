scoreboard objectives add mailbox_ids dummy
scoreboard objectives add mail.addresses dummy
scoreboard objectives add mail.sync dummy
scoreboard players set #election.active mail.sync 0
scoreboard players set #phase mail.sync 0
tag @e[type=minecraft:marker,tag=takis.mail_count_pending] remove takis.mail_count_pending

tellraw @a {"text":"Loaded Mail","color":"yellow"}
