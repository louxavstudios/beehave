scoreboard objectives add takis.guides dummy
scoreboard objectives add takis.ray dummy
scoreboard players set #ready takis.guides 0
scoreboard players set #phase takis.guides 0
execute as @a[limit=1] at @s run function guides:.dev/rebuild/template

tellraw @a {"text":"Loaded Guides","color":"yellow"}
