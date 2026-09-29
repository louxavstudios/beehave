execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~-1 ~0 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~0 ~-1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~0 ~0 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~0 ~1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~1 ~0 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~-1 ~0 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~-1 ~1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~0 ~-1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~0 ~1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~1 ~0 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~0 ~1 ~1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~-1 ~0 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~0 ~-1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~0 ~0 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~0 ~1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~1 ~0 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #vein:ores/clay unless entity @e[type=minecraft:marker,tag=takis.vm_node,distance=..0.1] run summon minecraft:marker ~ ~ ~ {Tags:["takis.vm_node"]}
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air
scoreboard players add #count vein.mine 1
playsound minecraft:block.gravel.break block @s ~ ~ ~ 0.25 1.2


