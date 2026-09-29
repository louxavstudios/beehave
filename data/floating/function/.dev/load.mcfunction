scoreboard objectives add takis.text.id dummy
scoreboard objectives add takis.text.ray dummy
scoreboard objectives add takis.text.cool dummy
scoreboard players add #text.next takis.text.id 0
scoreboard players set #phase takis.text.cool 0

tellraw @a {"text":"Loaded Floating","color":"yellow"}
