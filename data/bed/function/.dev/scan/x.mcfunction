execute if block ~ ~ ~ #bed:sleep/beds run scoreboard players set @s takis.bed.near 1
execute unless score @s takis.bed.near matches 1 if score @s takis.ray matches ..7 run function bed:.dev/advance/x
