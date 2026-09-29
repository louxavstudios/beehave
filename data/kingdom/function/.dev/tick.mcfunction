scoreboard players add #phase kingdom.meta 1
execute if score #phase kingdom.meta matches 20.. run scoreboard players set #phase kingdom.meta 0
# Split owner inventory conversion and box maintenance across separate phases.
function kingdom:.dev/generated/prepare
execute if score #phase kingdom.meta matches 12 run function kingdom:.dev/background
function kingdom:.dev/runtime
