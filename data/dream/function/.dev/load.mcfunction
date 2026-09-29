scoreboard objectives add takis.dream dummy
scoreboard objectives add takis.deaths deathCount
execute unless score #initialized takis.dream matches 1 store result score #base.keep takis.dream run gamerule keep_inventory
execute unless score #initialized takis.dream matches 1 run function dream:.dev/dream/roll/next
scoreboard players set #initialized takis.dream 1
function dream:.dev/dream/apply

tellraw @a {"text":"Loaded Dream","color":"yellow"}
