execute if entity @e[type=#invisible:item/frames,distance=..0.55,limit=1,sort=nearest] run tag @e[type=#invisible:item/frames,distance=..0.55,limit=1,sort=nearest] add takis.invisible_frame_target
execute if entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,limit=1] run return 1
scoreboard players add @s takis.ray 1
execute if score @s takis.ray matches ..24 positioned ^ ^ ^0.25 run function invisible:.dev/frame/raycast
