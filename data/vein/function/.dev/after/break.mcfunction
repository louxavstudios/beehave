# Continue from the blocks touching the now-empty position of the first block.
kill @e[type=minecraft:marker,tag=takis.vm_node]
scoreboard players set #count vein.mine 0
scoreboard players set #vein.family vein.mine 0
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_coal,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 1
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_iron,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 2
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_copper,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 3
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_gold,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 4
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_redstone,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 5
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_lapis,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 6
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_diamond,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 7
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_emerald,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 8
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_quartz,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 9
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_ancient_debris,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 10
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_andesite,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 11
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_diorite,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 12
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_granite,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 13
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_deepslate,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 14
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_calcite,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 15
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_smooth_basalt,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 16
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_amethyst_block,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 17
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_budding_amethyst,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 18
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_gravel,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 19
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_dirt,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 20
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_clay,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 21
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_terracotta,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 22
execute if entity @e[type=minecraft:marker,tag=takis.vm_pending,tag=takis.vm_family_stone,distance=..0.1,limit=1] run scoreboard players set #vein.family vein.mine 23

# Seed all touching blocks; vein/scan filters them to the remembered family.
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~-1 ~0 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~0 ~-1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~0 ~0 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~0 ~1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~1 ~0 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~-1 ~0 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~-1 ~1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~0 ~-1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~0 ~1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~1 ~0 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~1 ~1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~-1 ~0 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~0 ~-1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~0 ~0 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~0 ~1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~1 ~0 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #vein:ores unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}

# Keep the triggering player as executor so loot still uses their main-hand
# tool and enchantments while work is spread over later ticks.
tag @a[tag=vein.mine_worker] remove vein.mine_worker
tag @s add vein.mine_worker
tag @e[type=minecraft:marker,tag=takis.vm_pending,distance=..0.1,limit=1] add takis.vm_job
tag @e[type=minecraft:marker,tag=takis.vm_pending,distance=..0.1,limit=1] remove takis.vm_pending
scoreboard players set #job.idle vein.mine 0
scoreboard players set #job.active vein.mine 1
