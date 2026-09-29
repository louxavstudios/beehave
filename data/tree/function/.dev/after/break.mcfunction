# This runs at the queued marker after its original log has become air.
kill @e[type=minecraft:marker,tag=takis.tc_scan]
kill @e[type=minecraft:marker,tag=takis.tc_log]
kill @e[type=minecraft:marker,tag=takis.tc_leaf]
scoreboard players set #count tree.mine 0
scoreboard players set #has.leaves tree.mine 0
scoreboard players set #tree.family tree.mine 0
execute if entity @e[type=minecraft:marker,tag=takis.tc_pending,tag=takis.tc_family_oak,distance=..0.1,limit=1] run scoreboard players set #tree.family tree.mine 1
execute if entity @e[type=minecraft:marker,tag=takis.tc_pending,tag=takis.tc_family_spruce,distance=..0.1,limit=1] run scoreboard players set #tree.family tree.mine 2
execute if entity @e[type=minecraft:marker,tag=takis.tc_pending,tag=takis.tc_family_birch,distance=..0.1,limit=1] run scoreboard players set #tree.family tree.mine 3
execute if entity @e[type=minecraft:marker,tag=takis.tc_pending,tag=takis.tc_family_jungle,distance=..0.1,limit=1] run scoreboard players set #tree.family tree.mine 4
execute if entity @e[type=minecraft:marker,tag=takis.tc_pending,tag=takis.tc_family_acacia,distance=..0.1,limit=1] run scoreboard players set #tree.family tree.mine 5
execute if entity @e[type=minecraft:marker,tag=takis.tc_pending,tag=takis.tc_family_dark_oak,distance=..0.1,limit=1] run scoreboard players set #tree.family tree.mine 6
execute if entity @e[type=minecraft:marker,tag=takis.tc_pending,tag=takis.tc_family_mangrove,distance=..0.1,limit=1] run scoreboard players set #tree.family tree.mine 7
execute if entity @e[type=minecraft:marker,tag=takis.tc_pending,tag=takis.tc_family_cherry,distance=..0.1,limit=1] run scoreboard players set #tree.family tree.mine 8
execute if entity @e[type=minecraft:marker,tag=takis.tc_pending,tag=takis.tc_family_pale_oak,distance=..0.1,limit=1] run scoreboard players set #tree.family tree.mine 9
execute if entity @e[type=minecraft:marker,tag=takis.tc_pending,tag=takis.tc_family_poplar,distance=..0.1,limit=1] run scoreboard players set #tree.family tree.mine 10

# Seed the scan from every log touching the now-empty starting position.
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~-1 ~0 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~0 ~-1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~0 ~0 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~0 ~1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~1 ~0 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~-1 ~0 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~-1 ~1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~0 ~-1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~0 ~1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~1 ~0 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~1 ~1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~-1 ~0 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~0 ~-1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~0 ~0 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~0 ~1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~1 ~0 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #tree:tree/logs unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}

tag @a[tag=tree.mine_worker] remove tree.mine_worker
tag @s add tree.mine_worker
tag @e[type=minecraft:marker,tag=takis.tc_pending,distance=..0.1,limit=1] add takis.tc_job
tag @e[type=minecraft:marker,tag=takis.tc_pending,distance=..0.1,limit=1] remove takis.tc_pending
scoreboard players set #tree.stage tree.mine 1
scoreboard players set #job.idle tree.mine 0
scoreboard players set #job.active tree.mine 2
