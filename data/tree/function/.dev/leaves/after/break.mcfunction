# Continue from leaves touching the now-empty position of the first leaf.
kill @e[type=minecraft:marker,tag=takis.tc_shear_node]
scoreboard players set #count tree.mine 0
function tree:.dev/leaves/seed/neighbors
tag @a[tag=tree.mine_worker] remove tree.mine_worker
tag @s add tree.mine_worker
tag @e[type=minecraft:marker,tag=takis.tc_leaf_pending,distance=..0.1,limit=1] add takis.tc_leaf_job
tag @e[type=minecraft:marker,tag=takis.tc_leaf_pending,distance=..0.1,limit=1] remove takis.tc_leaf_pending
scoreboard players set #job.idle tree.mine 0
scoreboard players set #job.active tree.mine 3
