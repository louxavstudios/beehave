scoreboard objectives add takis.bs.data dummy
scoreboard objectives add takis.bs.keep dummy
scoreboard objectives add takis.bs.state dummy
scoreboard objectives add takis.bs.walk custom:walk_one_cm
scoreboard objectives add takis.bs.sprint custom:sprint_one_cm
scoreboard objectives add takis.bs.fall custom:fall_one_cm
scoreboard players set #100 takis.bs.data 100
kill @e[type=minecraft:text_display,tag=takis.bs_display]
schedule function bookshelf:.dev/inspector/main 1t replace

tellraw @a {"text":"Loaded Bookshelf","color":"yellow"}
