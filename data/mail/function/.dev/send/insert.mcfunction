$execute if data storage mail:mail package.id run data modify storage mail:mail package.Slot set value $(slot)b
execute if data storage mail:mail package.id run data modify block ~ ~ ~ Items append from storage mail:mail package
execute if data storage mail:mail package.id run scoreboard players set #mail.delivered mailbox_ids 1
