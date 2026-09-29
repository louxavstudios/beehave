execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.vm_node]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.vm_node]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.vm_node]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.vm_job]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.vm_job]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.vm_job]
tag @a[tag=vein.mine_worker] remove vein.mine_worker
scoreboard players set #job.active vein.mine 0