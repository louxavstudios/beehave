execute positioned ~-1 ~-1 ~-1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~-1 ~-1 ~0 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~-1 ~-1 ~1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~-1 ~0 ~-1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~-1 ~0 ~0 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~-1 ~0 ~1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~-1 ~1 ~-1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~-1 ~1 ~0 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~-1 ~1 ~1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~0 ~-1 ~-1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~0 ~-1 ~0 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~0 ~-1 ~1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~0 ~0 ~-1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~0 ~0 ~1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~0 ~1 ~-1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~0 ~1 ~0 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~0 ~1 ~1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~1 ~-1 ~-1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~1 ~-1 ~0 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~1 ~-1 ~1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~1 ~0 ~-1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~1 ~0 ~0 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~1 ~0 ~1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~1 ~1 ~-1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~1 ~1 ~0 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
execute positioned ~1 ~1 ~1 if predicate tree:natural unless entity @e[type=minecraft:marker,tag=takis.tc_leaf,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.tc_leaf"]}
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy
scoreboard players add #count tree.mine 1
playsound minecraft:block.wood.break block @s ~ ~ ~ 0.3 1.0
kill @e[type=minecraft:marker,tag=takis.tc_log,distance=..0.1,limit=1]
