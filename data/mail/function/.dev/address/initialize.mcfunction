# Rebuild the shared registry from the richest selected mailbox. Never clear
# another mailbox: synchronization is additive and cannot destroy newer books.
tag @e[type=minecraft:marker,tag=takis.mail_sender] remove takis.mail_address_synced
data remove storage mail:mail addresses
function mail:.dev/address/scan
scoreboard players set #network.initialized mail.addresses 1
scoreboard players set #richest.sync.v1 mail.addresses 1
