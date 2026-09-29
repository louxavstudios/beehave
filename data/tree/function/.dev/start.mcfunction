kill @e[type=minecraft:marker,tag=takis.tc_scan]
kill @e[type=minecraft:marker,tag=takis.tc_log]
kill @e[type=minecraft:marker,tag=takis.tc_leaf]
scoreboard players set #count tree.mine 0
scoreboard players set #has.leaves tree.mine 0
scoreboard players set #tree.family tree.mine 0
execute if block ~ ~ ~ #tree:logs/oak run scoreboard players set #tree.family tree.mine 1
execute if block ~ ~ ~ #tree:logs/spruce run scoreboard players set #tree.family tree.mine 2
execute if block ~ ~ ~ #tree:logs/birch run scoreboard players set #tree.family tree.mine 3
execute if block ~ ~ ~ #tree:logs/jungle run scoreboard players set #tree.family tree.mine 4
execute if block ~ ~ ~ #tree:logs/acacia run scoreboard players set #tree.family tree.mine 5
execute if block ~ ~ ~ #tree:logs/dark/oak run scoreboard players set #tree.family tree.mine 6
execute if block ~ ~ ~ #tree:logs/mangrove run scoreboard players set #tree.family tree.mine 7
execute if block ~ ~ ~ #tree:logs/cherry run scoreboard players set #tree.family tree.mine 8
execute if block ~ ~ ~ #tree:logs/pale/oak run scoreboard players set #tree.family tree.mine 9
summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["takis.tc_scan"]}
function tree:.dev/scan/process
execute if score #has.leaves tree.mine matches 1.. run function tree:.dev/break/logs/start
kill @e[type=minecraft:marker,tag=takis.tc_scan]
kill @e[type=minecraft:marker,tag=takis.tc_log]
kill @e[type=minecraft:marker,tag=takis.tc_leaf]
