# Resolve all notification requests after every system has submitted one.
execute as @a[scores={takis.notif.time=1..}] run function notice:.dev/render
scoreboard players remove @a[scores={takis.notif.time=1..}] takis.notif.time 1
scoreboard players set @a[scores={takis.notif.time=0}] takis.notif.event 0
scoreboard players set @a[scores={takis.notif.time=0}] takis.notif.priority 0
