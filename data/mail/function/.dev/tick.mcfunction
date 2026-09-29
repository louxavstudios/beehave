scoreboard players add #phase mail.sync 1
execute if score #phase mail.sync matches 20.. run scoreboard players set #phase mail.sync 0
# Process only mailboxes observed open and now settling or closed.
function mail:.dev/runtime
function mail:.dev/address/election/tick
execute if score #phase mail.sync matches 5 run function mail:.dev/maintenance
execute if score #phase mail.sync matches 5 run function mail:.dev/scan/open
execute if score #phase mail.sync matches 15 run function mail:.dev/scan/open
