execute if data storage mail:mail migration_work[0].item_id as @e[type=minecraft:marker,tag=takis.mail_sender] at @s run function mail:.dev/migrate/remove/empty/shulker with storage mail:mail migration_work[0]
data remove storage mail:mail migration_work[0]
execute if data storage mail:mail migration_work[0] run function mail:.dev/migrate/bundles/only/next
