scoreboard objectives add takis.ray dummy
scoreboard objectives add takis.bed.near dummy
scoreboard objectives add takis.bed.scan dummy
scoreboard objectives add takis.bed.time dummy
scoreboard players set #bed.timer takis.bed.scan 0
scoreboard players set #bed.previous takis.bed.scan -1
scoreboard players set #bed.previous.mode takis.bed.scan -1
scoreboard players set #phase takis.bed.scan 0

tellraw @a {"text":"Loaded Bed","color":"yellow"}
