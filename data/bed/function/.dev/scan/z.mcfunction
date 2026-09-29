scoreboard players set @s takis.ray 0
function bed:.dev/scan/x
execute unless score @s takis.bed.near matches 1 if score @s takis.bed.time matches ..7 run function bed:.dev/advance/z
