execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_scan]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_scan]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_scan]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_log]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_log]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_log]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_leaf]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_leaf]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_leaf]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.tc_job]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.tc_job]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.tc_job]
tag @a[tag=tree.mine_worker] remove tree.mine_worker
scoreboard players set #tree.stage tree.mine 0
scoreboard players set #job.active tree.mine 0