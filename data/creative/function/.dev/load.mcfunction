scoreboard objectives add takis.divine.calc dummy
scoreboard objectives add takis.divine.cool dummy
scoreboard objectives add takis.divine.latch dummy
scoreboard players set #phase takis.divine.calc 0
advancement revoke @a only creative:hand/using/book

tellraw @a {"text":"Loaded Creative","color":"yellow"}
