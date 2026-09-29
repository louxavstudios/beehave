# Queue this leaf cluster until the player finishes breaking the targeted leaf.
execute unless entity @e[type=minecraft:marker,tag=takis.tc_leaf_pending,distance=..0.1] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["takis.tc_leaf_pending"]}
