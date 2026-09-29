scoreboard players set #mail.valid mailbox_ids 1
scoreboard players set #mail.length mailbox_ids 0
data modify storage mail:mail input.remaining set from storage mail:mail input.id
function mail:.dev/validate/next
execute unless score #mail.length mailbox_ids matches 3..32 run scoreboard players set #mail.valid mailbox_ids 0
