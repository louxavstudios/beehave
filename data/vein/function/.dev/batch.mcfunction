# Bound connected-block work so large veins cannot monopolize one server tick.
scoreboard players set #job.idle vein.mine 0
function vein:.dev/process
function vein:.dev/process
function vein:.dev/process
function vein:.dev/process
execute if score #count vein.mine matches 64.. run function vein:.dev/finish
execute unless entity @e[type=minecraft:marker,tag=takis.vm_node,limit=1] run function vein:.dev/finish