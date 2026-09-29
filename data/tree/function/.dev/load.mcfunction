scoreboard objectives add tree.mine dummy
scoreboard players set #tree.family tree.mine 0
scoreboard players set #count tree.mine 0
scoreboard players set #has.leaves tree.mine 0
scoreboard players set #job.active tree.mine 0
scoreboard players set #tree.stage tree.mine 0
scoreboard players set #job.idle tree.mine 0
tag @a[tag=tree.mine_worker] remove tree.mine_worker
tag @a[tag=takis.mine_worker] remove takis.mine_worker
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_pending]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_pending]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_pending]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_leaf_pending]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_leaf_pending]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_leaf_pending]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_job]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_job]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_job]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_leaf_job]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_leaf_job]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_leaf_job]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_scan]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_scan]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_scan]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_log]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_log]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_log]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_leaf]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_leaf]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_leaf]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_shear_node]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_shear_node]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_shear_node]

tellraw @a {"text":"Loaded Tree","color":"yellow"}
