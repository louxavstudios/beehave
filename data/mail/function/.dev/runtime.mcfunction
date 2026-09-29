# Fast path: only open or recently closed senders are touched every tick.
execute as @e[type=minecraft:marker,tag=takis.mail_sender,tag=takis.mail_active] at @s if block ~ ~ ~ minecraft:barrel[open=true] run scoreboard players set @s mailbox_ids 10
execute as @e[type=minecraft:marker,tag=takis.mail_sender,tag=takis.mail_active,scores={mailbox_ids=1..}] at @s if block ~ ~ ~ minecraft:barrel[open=false] run scoreboard players remove @s mailbox_ids 1
execute as @e[type=minecraft:marker,tag=takis.mail_sender,tag=takis.mail_active,scores={mailbox_ids=0}] at @s if block ~ ~ ~ minecraft:barrel[open=false] run function mail:.dev/send/process
tag @e[type=minecraft:marker,tag=takis.mail_sender,tag=takis.mail_active,scores={mailbox_ids=0}] remove takis.mail_active
