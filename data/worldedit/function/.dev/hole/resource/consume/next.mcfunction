data modify storage worldedit:hole resource.current set from storage worldedit:hole resource.source[0]
data remove storage worldedit:hole resource.source[0]
scoreboard players set #match worldedit.hole 0
$execute if data storage worldedit:hole resource.current{id:"$(block)"} if score #remaining worldedit.hole matches 1.. run scoreboard players set #match worldedit.hole 1
execute store result score #stack worldedit.hole run data get storage worldedit:hole resource.current.count 1
execute if score #match worldedit.hole matches 0 run data modify storage worldedit:hole resource.output append from storage worldedit:hole resource.current
execute if score #match worldedit.hole matches 1 if score #stack worldedit.hole <= #remaining worldedit.hole run function worldedit:.dev/hole/resource/consume/all
execute if score #match worldedit.hole matches 1 if score #stack worldedit.hole > #remaining worldedit.hole run function worldedit:.dev/hole/resource/consume/part
execute if data storage worldedit:hole resource.source[0] run function worldedit:.dev/hole/resource/consume/next with storage worldedit:hole operation
