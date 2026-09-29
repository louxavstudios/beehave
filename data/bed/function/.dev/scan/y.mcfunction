function bed:.dev/scan/z/init
execute unless score @s takis.bed.near matches 1 if score @s takis.bed.scan matches ..3 run function bed:.dev/advance/y
