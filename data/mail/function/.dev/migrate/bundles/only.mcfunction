data modify storage mail:mail migration_work set from storage mail:mail addresses
function mail:.dev/migrate/bundles/only/next
data remove storage mail:mail addresses
scoreboard players reset * mail.addresses
execute as @e[type=minecraft:marker,tag=takis.mail_sender] at @s if block ~ ~ ~ minecraft:barrel run function mail:.dev/address/scan
scoreboard players set #bundles.only.migration mail.addresses 1
