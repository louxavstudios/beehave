data modify storage mail:mail address_work set from storage mail:mail addresses
function mail:.dev/address/sync/next
tag @e[type=minecraft:marker,tag=takis.mail_sender] add takis.mail_address_synced
execute as @e[type=minecraft:marker,tag=takis.mail_sender] at @s run function mail:.dev/address/snapshot
