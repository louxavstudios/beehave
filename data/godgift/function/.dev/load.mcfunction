scoreboard objectives add takis.cultural dummy
advancement revoke @a only godgift:using/book
scoreboard players add #log.scan takis.cultural 0
scoreboard players set #phase takis.cultural 0
execute if data storage godgift:cultural global_logs run function godgift:.dev/log/rebuild/start

tellraw @a {"text":"Loaded Godgift","color":"yellow"}
