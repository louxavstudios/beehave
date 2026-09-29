kill @e[type=minecraft:marker,tag=takis.tc_scan]
execute unless score #has.leaves tree.mine matches 1.. run return run function tree:.dev/finish
scoreboard players set #count tree.mine 0
scoreboard players set #tree.stage tree.mine 2