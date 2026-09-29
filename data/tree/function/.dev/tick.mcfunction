# Fell queued trees only if the player is still crouching when the first log
# finishes breaking. Otherwise discard the queued action for normal mining.
execute unless score #job.active tree.mine matches 1.. as @e[type=minecraft:marker,tag=takis.tc_pending,limit=1,sort=arbitrary] at @s unless block ~ ~ ~ #tree:tree/logs as @a[distance=..8,sort=nearest,limit=1] if predicate tree:sneaking run function tree:.dev/after/break
execute unless score #job.active tree.mine matches 1.. as @e[type=minecraft:marker,tag=takis.tc_pending] at @s unless block ~ ~ ~ #tree:tree/logs run kill @s

# Shear connected leaves only after the first leaf has finished breaking.
execute unless score #job.active tree.mine matches 1.. as @e[type=minecraft:marker,tag=takis.tc_leaf_pending,limit=1,sort=arbitrary] at @s unless block ~ ~ ~ #minecraft:leaves as @a[distance=..8,sort=nearest,limit=1] if predicate tree:sneaking run function tree:.dev/leaves/after/break
execute unless score #job.active tree.mine matches 1.. as @e[type=minecraft:marker,tag=takis.tc_leaf_pending] at @s unless block ~ ~ ~ #minecraft:leaves run kill @s

execute if score #job.active tree.mine matches 2..3 run scoreboard players add #job.idle tree.mine 1
execute in minecraft:overworld if entity @e[type=minecraft:marker,tag=takis.tc_job,limit=1] as @a[tag=tree.mine_worker,limit=1] at @e[type=minecraft:marker,tag=takis.tc_job,limit=1] run function tree:.dev/batch
execute in minecraft:the_nether if entity @e[type=minecraft:marker,tag=takis.tc_job,limit=1] as @a[tag=tree.mine_worker,limit=1] at @e[type=minecraft:marker,tag=takis.tc_job,limit=1] run function tree:.dev/batch
execute in minecraft:the_end if entity @e[type=minecraft:marker,tag=takis.tc_job,limit=1] as @a[tag=tree.mine_worker,limit=1] at @e[type=minecraft:marker,tag=takis.tc_job,limit=1] run function tree:.dev/batch
execute if score #job.active tree.mine matches 2 unless entity @a[tag=tree.mine_worker,limit=1] run function tree:.dev/finish

execute in minecraft:overworld if entity @e[type=minecraft:marker,tag=takis.tc_leaf_job,limit=1] as @a[tag=tree.mine_worker,limit=1] at @e[type=minecraft:marker,tag=takis.tc_leaf_job,limit=1] run function tree:.dev/leaves/batch
execute in minecraft:the_nether if entity @e[type=minecraft:marker,tag=takis.tc_leaf_job,limit=1] as @a[tag=tree.mine_worker,limit=1] at @e[type=minecraft:marker,tag=takis.tc_leaf_job,limit=1] run function tree:.dev/leaves/batch
execute in minecraft:the_end if entity @e[type=minecraft:marker,tag=takis.tc_leaf_job,limit=1] as @a[tag=tree.mine_worker,limit=1] at @e[type=minecraft:marker,tag=takis.tc_leaf_job,limit=1] run function tree:.dev/leaves/batch
execute if score #job.active tree.mine matches 3 unless entity @a[tag=tree.mine_worker,limit=1] run function tree:.dev/leaves/finish
execute if score #job.active tree.mine matches 2 if score #job.idle tree.mine matches 100.. run function tree:.dev/finish
execute if score #job.active tree.mine matches 3 if score #job.idle tree.mine matches 100.. run function tree:.dev/leaves/finish

