scoreboard players set #mail.valid mailbox_ids 0
scoreboard players set #mail.ready mailbox_ids 0
data remove storage mail:mail input.id
data remove storage mail:mail package
$execute if items block ~ ~ ~ container.$(slot) #mail:mail/containers if data block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_name" run data modify storage mail:mail input.id set from block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_name"
$execute if items block ~ ~ ~ container.$(slot) #mail:mail/containers if data block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_name" run function mail:.dev/validate/start
# Bundles are reusable addresses: send their first contained stack and leave
# the bundle behind. Shulker boxes are packages: deliver the entire box intact.
$execute if score #mail.valid mailbox_ids matches 1 if items block ~ ~ ~ container.$(slot) minecraft:bundle if data block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:bundle_contents"[0].id run data modify storage mail:mail package set from block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:bundle_contents"[0]
$execute if score #mail.valid mailbox_ids matches 1 if items block ~ ~ ~ container.$(slot) #minecraft:shulker_boxes run data modify storage mail:mail package set from block ~ ~ ~ Items[{Slot:$(slot)b}]
execute if score #mail.valid mailbox_ids matches 1 if data storage mail:mail package.id run function mail:.dev/send/route with storage mail:mail input
$execute if score #mail.ready mailbox_ids matches 1 if data storage mail:mail package.id if items block ~ ~ ~ container.$(slot) minecraft:bundle run data remove block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:bundle_contents"[0]
$execute if score #mail.ready mailbox_ids matches 1 if data storage mail:mail package.id if items block ~ ~ ~ container.$(slot) #minecraft:shulker_boxes run data remove block ~ ~ ~ Items[{Slot:$(slot)b}]
execute if score #mail.ready mailbox_ids matches 1 if data storage mail:mail package.id run function mail:.dev/send/commit with storage mail:mail input
execute if score #mail.delivered mailbox_ids matches 1 as @a[distance=..8,sort=nearest,limit=1] run function notice:.dev/mail/sent/success
execute if score #mail.delivered mailbox_ids matches 1 run scoreboard players set @s mailbox_ids 1
