tag @e[type=#invisible:item/frames,distance=..6,tag=takis.invisible_frame_empty] remove takis.invisible_frame_empty
execute as @e[type=#invisible:item/frames,distance=..6] unless data entity @s Item run tag @s add takis.invisible_frame_empty
