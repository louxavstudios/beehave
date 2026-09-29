scoreboard players add #phase takis.bed.scan 1
execute if score #phase takis.bed.scan matches 20.. run scoreboard players set #phase takis.bed.scan 0
# Once per second during the night, report changes to the number of players who
# are near a placed bed. Only when nobody is near one, report carried beds.
execute if score #phase takis.bed.scan matches 4 run function bed:.dev/runtime
