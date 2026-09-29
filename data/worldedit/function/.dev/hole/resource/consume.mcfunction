scoreboard players operation #remaining worldedit.hole = #count worldedit.hole
function worldedit:.dev/hole/resource/consume/offhand with storage worldedit:hole operation
scoreboard players set #taken worldedit.hole 0
execute store result storage worldedit:hole operation.amount int 1 run scoreboard players get #remaining worldedit.hole
execute if score #remaining worldedit.hole matches 1.. run function worldedit:.dev/hole/resource/consume/top with storage worldedit:hole operation
scoreboard players operation #remaining worldedit.hole -= #taken worldedit.hole
execute if score #remaining worldedit.hole matches 1.. run function worldedit:.dev/hole/resource/bundles/consume
