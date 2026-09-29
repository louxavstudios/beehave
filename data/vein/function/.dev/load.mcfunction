scoreboard objectives add vein.mine dummy
scoreboard players set #vein.family vein.mine 0
scoreboard players set #count vein.mine 0
scoreboard players set #job.active vein.mine 0
scoreboard players set #job.idle vein.mine 0
tag @a[tag=vein.mine_worker] remove vein.mine_worker
tag @a[tag=takis.mine_worker] remove takis.mine_worker
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.vm_pending]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.vm_pending]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.vm_pending]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.vm_job]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.vm_job]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.vm_job]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=takis.vm_node]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=takis.vm_node]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=takis.vm_node]

tellraw @a {"text":"Loaded Vein","color":"yellow"}
