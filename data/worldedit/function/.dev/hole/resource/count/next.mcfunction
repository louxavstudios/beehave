data modify storage worldedit:hole resource.current set from storage worldedit:hole resource.source[0]
data remove storage worldedit:hole resource.source[0]
$execute if data storage worldedit:hole resource.current{id:"$(block)"} store result score #stack worldedit.hole run data get storage worldedit:hole resource.current.count 1
$execute if data storage worldedit:hole resource.current{id:"$(block)"} run scoreboard players operation #available worldedit.hole += #stack worldedit.hole
execute if data storage worldedit:hole resource.source[0] run function worldedit:.dev/hole/resource/count/next with storage worldedit:hole operation
