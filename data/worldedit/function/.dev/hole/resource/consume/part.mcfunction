scoreboard players operation #new worldedit.hole = #stack worldedit.hole
scoreboard players operation #new worldedit.hole -= #remaining worldedit.hole
execute store result storage worldedit:hole resource.current.count int 1 run scoreboard players get #new worldedit.hole
data modify storage worldedit:hole resource.output append from storage worldedit:hole resource.current
scoreboard players set #remaining worldedit.hole 0
