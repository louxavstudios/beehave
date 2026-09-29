# A barrel named exactly "Mailbox" is an outgoing mailbox.
scoreboard players set #mail.valid mailbox_ids 0
execute if data block ~ ~ ~ {CustomName:"Mailbox"} unless entity @e[type=minecraft:marker,tag=takis.mail_sender,distance=..0.8] run summon minecraft:marker ~ ~ ~ {Tags:["takis.mail_sender","takis.mail_cleanup_v1"]}

# Any other plain custom name is treated as a requested receiving ID.
execute unless data block ~ ~ ~ {CustomName:"Mailbox"} if data block ~ ~ ~ CustomName unless entity @e[type=minecraft:marker,tag=takis.mail_receiver,distance=..0.8] run data modify storage mail:mail input.id set from block ~ ~ ~ CustomName
execute unless data block ~ ~ ~ {CustomName:"Mailbox"} if data block ~ ~ ~ CustomName unless entity @e[type=minecraft:marker,tag=takis.mail_receiver,distance=..0.8] run function mail:.dev/validate/start
execute if score #mail.valid mailbox_ids matches 1 run function mail:.dev/register/receiver with storage mail:mail input
