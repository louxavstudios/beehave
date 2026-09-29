execute unless score @s takis.fill.id matches 1.. run function worldedit:.dev/runtime/fill/helper/assign/id
$data modify storage worldedit:hole operation set value {block:"$(block)"}
execute positioned ~ ~-1 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function worldedit:.dev/hole/start
