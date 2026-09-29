# Remember the synchronized mailbox state so later GUI edits can be diffed.
data modify entity @s data.last_addresses set value []
data modify entity @s data.last_addresses set from block ~ ~ ~ Items