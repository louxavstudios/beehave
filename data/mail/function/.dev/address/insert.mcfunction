scoreboard players set #mail.slot mailbox_ids -1
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players set #mail.slot mailbox_ids 0
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:1b}] run scoreboard players set #mail.slot mailbox_ids 1
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:2b}] run scoreboard players set #mail.slot mailbox_ids 2
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set #mail.slot mailbox_ids 3
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:4b}] run scoreboard players set #mail.slot mailbox_ids 4
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:5b}] run scoreboard players set #mail.slot mailbox_ids 5
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:6b}] run scoreboard players set #mail.slot mailbox_ids 6
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:7b}] run scoreboard players set #mail.slot mailbox_ids 7
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:8b}] run scoreboard players set #mail.slot mailbox_ids 8
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:9b}] run scoreboard players set #mail.slot mailbox_ids 9
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:10b}] run scoreboard players set #mail.slot mailbox_ids 10
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:11b}] run scoreboard players set #mail.slot mailbox_ids 11
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:12b}] run scoreboard players set #mail.slot mailbox_ids 12
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players set #mail.slot mailbox_ids 13
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:14b}] run scoreboard players set #mail.slot mailbox_ids 14
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:15b}] run scoreboard players set #mail.slot mailbox_ids 15
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:16b}] run scoreboard players set #mail.slot mailbox_ids 16
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:17b}] run scoreboard players set #mail.slot mailbox_ids 17
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:18b}] run scoreboard players set #mail.slot mailbox_ids 18
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:19b}] run scoreboard players set #mail.slot mailbox_ids 19
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:20b}] run scoreboard players set #mail.slot mailbox_ids 20
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:21b}] run scoreboard players set #mail.slot mailbox_ids 21
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:22b}] run scoreboard players set #mail.slot mailbox_ids 22
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:23b}] run scoreboard players set #mail.slot mailbox_ids 23
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:24b}] run scoreboard players set #mail.slot mailbox_ids 24
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:25b}] run scoreboard players set #mail.slot mailbox_ids 25
execute if score #mail.slot mailbox_ids matches -1 unless data block ~ ~ ~ Items[{Slot:26b}] run scoreboard players set #mail.slot mailbox_ids 26
execute if score #mail.slot mailbox_ids matches 0..26 store result storage mail:mail output.slot int 1 run scoreboard players get #mail.slot mailbox_ids
execute if score #mail.slot mailbox_ids matches 0..26 run function mail:.dev/address/insert/at with storage mail:mail output
