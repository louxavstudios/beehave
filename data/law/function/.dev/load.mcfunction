scoreboard objectives add law.credit dummy
scoreboard objectives add law.init dummy
scoreboard objectives add law.notice dummy
scoreboard objectives add law.event dummy
scoreboard objectives add law.prisoned dummy
scoreboard objectives add law.control dummy
execute unless score #initialized law.control matches 1 run scoreboard players set #enabled law.control 1
scoreboard players set #initialized law.control 1
scoreboard objectives modify law.credit displayname {"text":"Credit Score","color":"gold"}
execute if score #enabled law.control matches 1 run scoreboard objectives setdisplay list law.credit
function law:.dev/prison/locations

tellraw @a {"text":"Loaded Law","color":"yellow"}
