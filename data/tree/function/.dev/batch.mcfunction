# Scan up to eight log nodes, then break up to four confirmed logs per tick.
scoreboard players set #job.idle tree.mine 0
execute if score #tree.stage tree.mine matches 1 run function tree:.dev/scan/process
execute if score #tree.stage tree.mine matches 1 run function tree:.dev/scan/process
execute if score #tree.stage tree.mine matches 1 run function tree:.dev/scan/process
execute if score #tree.stage tree.mine matches 1 run function tree:.dev/scan/process
execute if score #tree.stage tree.mine matches 1 run function tree:.dev/scan/process
execute if score #tree.stage tree.mine matches 1 run function tree:.dev/scan/process
execute if score #tree.stage tree.mine matches 1 run function tree:.dev/scan/process
execute if score #tree.stage tree.mine matches 1 run function tree:.dev/scan/process
execute if score #tree.stage tree.mine matches 1 if score #count tree.mine matches 256.. run function tree:.dev/start/break/batch
execute if score #tree.stage tree.mine matches 1 unless entity @e[type=minecraft:marker,tag=takis.tc_scan,limit=1] run function tree:.dev/start/break/batch

execute if score #tree.stage tree.mine matches 2 run function tree:.dev/break/logs/process
execute if score #tree.stage tree.mine matches 2 run function tree:.dev/break/logs/process
execute if score #tree.stage tree.mine matches 2 run function tree:.dev/break/logs/process
execute if score #tree.stage tree.mine matches 2 run function tree:.dev/break/logs/process
execute if score #tree.stage tree.mine matches 2 if score #count tree.mine matches 256.. run function tree:.dev/finish
execute if score #tree.stage tree.mine matches 2 unless entity @e[type=minecraft:marker,tag=takis.tc_log,limit=1] run function tree:.dev/finish