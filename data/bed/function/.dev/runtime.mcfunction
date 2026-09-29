execute store result score #daytime takis.bed.time run time query minecraft:day
execute if score #daytime takis.bed.time matches 13000..23000 run function bed:.dev/night
execute unless score #daytime takis.bed.time matches 13000..23000 run function bed:.dev/day
