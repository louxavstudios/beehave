scoreboard players set #available worldedit.hole 0
function worldedit:.dev/hole/resource/count/top with storage worldedit:hole operation
function worldedit:.dev/hole/resource/bundles/count
scoreboard players operation #missing worldedit.hole = #count worldedit.hole
scoreboard players operation #missing worldedit.hole -= #available worldedit.hole
execute if score #missing worldedit.hole matches 1.. run scoreboard players set #resource.ok worldedit.hole 0
execute if score #missing worldedit.hole matches 1.. run title @s actionbar [{"text":"You are missing ","color":"white"},{"score":{"name":"#missing","objective":"worldedit.hole"},"color":"white"},{"text":" ","color":"white"},{"nbt":"operation.block","storage":"worldedit:hole","color":"white"},{"text":" blocks","color":"white"}]
