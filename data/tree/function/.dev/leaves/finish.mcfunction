execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_shear_node]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_shear_node]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_shear_node]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_leaf_job]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_leaf_job]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_leaf_job]
tag @a[tag=tree.mine_worker] remove tree.mine_worker
scoreboard players set #job.active tree.mine 0