data modify storage mail:mail input.char set string storage mail:mail input.remaining 0 1
scoreboard players set #mail.char mailbox_ids 0
function mail:.dev/validate/char
execute unless score #mail.char mailbox_ids matches 1 run scoreboard players set #mail.valid mailbox_ids 0
scoreboard players add #mail.length mailbox_ids 1
data modify storage mail:mail input.remaining set string storage mail:mail input.remaining 1
execute unless data storage mail:mail input{remaining:""} if score #mail.length mailbox_ids matches ..32 run function mail:.dev/validate/next
execute unless data storage mail:mail input{remaining:""} run scoreboard players set #mail.valid mailbox_ids 0
