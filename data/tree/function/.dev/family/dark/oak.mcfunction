summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_log"]}
scoreboard players add #count tree.mine 1
execute positioned ~-1 ~-1 ~-1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~-1 ~-1 ~0 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~-1 ~-1 ~1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~-1 ~0 ~-1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~-1 ~0 ~0 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~-1 ~0 ~1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~-1 ~1 ~-1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~-1 ~1 ~0 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~-1 ~1 ~1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~0 ~-1 ~-1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~0 ~-1 ~0 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~0 ~-1 ~1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~0 ~0 ~-1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~0 ~0 ~1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~0 ~1 ~-1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~0 ~1 ~0 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~0 ~1 ~1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~1 ~-1 ~-1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~1 ~-1 ~0 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~1 ~-1 ~1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~1 ~0 ~-1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~1 ~0 ~0 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~1 ~0 ~1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~1 ~1 ~-1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~1 ~1 ~0 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~1 ~1 ~1 if predicate tree:natural run scoreboard players set #has.leaves tree.mine 1
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~-1 ~0 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~0 ~-1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~0 ~0 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~0 ~1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~1 ~0 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~-1 ~0 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~-1 ~1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~0 ~-1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~0 ~1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~1 ~0 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~0 ~1 ~1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~-1 ~0 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~0 ~-1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~0 ~0 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~0 ~1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~1 ~0 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #tree:logs/dark/oak unless entity @e[type=minecraft:marker,tag=takis.tc_scan,distance=..0.1] unless entity @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_scan"]}
