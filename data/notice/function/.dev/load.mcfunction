scoreboard objectives add takis.notif.event dummy
scoreboard objectives add takis.notif.priority dummy
scoreboard objectives add takis.notif.time dummy
scoreboard players set @a takis.notif.event 0
scoreboard players set @a takis.notif.priority 0
scoreboard players set @a takis.notif.time 0

tellraw @a {"text":"Loaded Notice","color":"yellow"}
