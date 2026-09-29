$data modify storage worldedit:hole operation set value {block:"$(block)",consume:1b}
$execute positioned $(x) $(cap) $(z) align xyz positioned ~0.5 ~0.5 ~0.5 run function worldedit:.dev/hole/start
