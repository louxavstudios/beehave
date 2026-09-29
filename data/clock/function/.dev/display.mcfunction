# Requery and recalculate the Overworld date every tick
# while this player is holding a clock.

function clock:.dev/calculate

# Display the calculated date to the current player.

execute if score #MONTH calendar matches 1 run title @s actionbar [{"text":"January ","color":"gold"},{"score":{"name":"#DAY","objective":"calendar"},"color":"white"},{"text":", Year ","color":"gray"},{"score":{"name":"#YEAR","objective":"calendar"},"color":"white"}]

execute if score #MONTH calendar matches 2 run title @s actionbar [{"text":"February ","color":"gold"},{"score":{"name":"#DAY","objective":"calendar"},"color":"white"},{"text":", Year ","color":"gray"},{"score":{"name":"#YEAR","objective":"calendar"},"color":"white"}]

execute if score #MONTH calendar matches 3 run title @s actionbar [{"text":"March ","color":"gold"},{"score":{"name":"#DAY","objective":"calendar"},"color":"white"},{"text":", Year ","color":"gray"},{"score":{"name":"#YEAR","objective":"calendar"},"color":"white"}]

execute if score #MONTH calendar matches 4 run title @s actionbar [{"text":"April ","color":"gold"},{"score":{"name":"#DAY","objective":"calendar"},"color":"white"},{"text":", Year ","color":"gray"},{"score":{"name":"#YEAR","objective":"calendar"},"color":"white"}]

execute if score #MONTH calendar matches 5 run title @s actionbar [{"text":"May ","color":"gold"},{"score":{"name":"#DAY","objective":"calendar"},"color":"white"},{"text":", Year ","color":"gray"},{"score":{"name":"#YEAR","objective":"calendar"},"color":"white"}]

execute if score #MONTH calendar matches 6 run title @s actionbar [{"text":"June ","color":"gold"},{"score":{"name":"#DAY","objective":"calendar"},"color":"white"},{"text":", Year ","color":"gray"},{"score":{"name":"#YEAR","objective":"calendar"},"color":"white"}]

execute if score #MONTH calendar matches 7 run title @s actionbar [{"text":"July ","color":"gold"},{"score":{"name":"#DAY","objective":"calendar"},"color":"white"},{"text":", Year ","color":"gray"},{"score":{"name":"#YEAR","objective":"calendar"},"color":"white"}]

execute if score #MONTH calendar matches 8 run title @s actionbar [{"text":"August ","color":"gold"},{"score":{"name":"#DAY","objective":"calendar"},"color":"white"},{"text":", Year ","color":"gray"},{"score":{"name":"#YEAR","objective":"calendar"},"color":"white"}]

execute if score #MONTH calendar matches 9 run title @s actionbar [{"text":"September ","color":"gold"},{"score":{"name":"#DAY","objective":"calendar"},"color":"white"},{"text":", Year ","color":"gray"},{"score":{"name":"#YEAR","objective":"calendar"},"color":"white"}]

execute if score #MONTH calendar matches 10 run title @s actionbar [{"text":"October ","color":"gold"},{"score":{"name":"#DAY","objective":"calendar"},"color":"white"},{"text":", Year ","color":"gray"},{"score":{"name":"#YEAR","objective":"calendar"},"color":"white"}]

execute if score #MONTH calendar matches 11 run title @s actionbar [{"text":"November ","color":"gold"},{"score":{"name":"#DAY","objective":"calendar"},"color":"white"},{"text":", Year ","color":"gray"},{"score":{"name":"#YEAR","objective":"calendar"},"color":"white"}]

execute if score #MONTH calendar matches 12 run title @s actionbar [{"text":"December ","color":"gold"},{"score":{"name":"#DAY","objective":"calendar"},"color":"white"},{"text":", Year ","color":"gray"},{"score":{"name":"#YEAR","objective":"calendar"},"color":"white"}]
