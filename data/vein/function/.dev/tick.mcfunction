# Mine queued veins only after the first block has broken and only while the
# player is still crouching. Otherwise discard the queued action.
execute unless score #job.active vein.mine matches 1.. as @e[type=minecraft:marker,tag=takis.vm_pending,limit=1,sort=arbitrary] at @s unless block ~ ~ ~ #vein:ores as @a[distance=..8,sort=nearest,limit=1] if predicate vein:sneaking run function vein:.dev/after/break
execute unless score #job.active vein.mine matches 1.. as @e[type=minecraft:marker,tag=takis.vm_pending] at @s unless block ~ ~ ~ #vein:ores run kill @s

# Process at most four connected vein nodes per tick in the job's dimension.
execute if score #job.active vein.mine matches 1 run scoreboard players add #job.idle vein.mine 1
execute in minecraft:overworld if entity @e[type=minecraft:marker,tag=takis.vm_job,limit=1] as @a[tag=vein.mine_worker,limit=1] at @e[type=minecraft:marker,tag=takis.vm_job,limit=1] run function vein:.dev/batch
execute in minecraft:the_nether if entity @e[type=minecraft:marker,tag=takis.vm_job,limit=1] as @a[tag=vein.mine_worker,limit=1] at @e[type=minecraft:marker,tag=takis.vm_job,limit=1] run function vein:.dev/batch
execute in minecraft:the_end if entity @e[type=minecraft:marker,tag=takis.vm_job,limit=1] as @a[tag=vein.mine_worker,limit=1] at @e[type=minecraft:marker,tag=takis.vm_job,limit=1] run function vein:.dev/batch
execute if score #job.active vein.mine matches 1 unless entity @a[tag=vein.mine_worker,limit=1] run function vein:.dev/finish

execute if score #job.active vein.mine matches 1 if score #job.idle vein.mine matches 100.. run function vein:.dev/finish
