advancement revoke @s only invisible:frame/toggle
tag @e[type=#invisible:item/frames,tag=takis.invisible_frame_target] remove takis.invisible_frame_target
scoreboard players set @s takis.ray 0
execute at @s anchored eyes positioned ^ ^ ^0.1 run function invisible:.dev/frame/raycast
execute unless entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,limit=1] run return 0

# An empty frame consumes and displays the clicked membrane before this
# advancement reward runs. Restore that membrane and leave the frame empty.
execute if entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,tag=takis.invisible_frame_empty,limit=1] run data remove entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,limit=1] Item
execute if entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,tag=takis.invisible_frame_empty,limit=1] run data modify entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,limit=1] ItemRotation set value 0b
execute if entity @s[gamemode=!creative] if entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,tag=takis.invisible_frame_empty,limit=1] run give @s minecraft:phantom_membrane 1

# A populated frame rotates its displayed item during vanilla interaction.
# Move its rotation back one step so toggling never changes the display.
execute unless entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,tag=takis.invisible_frame_empty,limit=1] store result score #frame.rotation takis.ray run data get entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,limit=1] ItemRotation
execute unless entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,tag=takis.invisible_frame_empty,limit=1] run scoreboard players remove #frame.rotation takis.ray 1
execute unless entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,tag=takis.invisible_frame_empty,limit=1] if score #frame.rotation takis.ray matches ..-1 run scoreboard players set #frame.rotation takis.ray 7
execute unless entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,tag=takis.invisible_frame_empty,limit=1] store result entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,limit=1] ItemRotation byte 1 run scoreboard players get #frame.rotation takis.ray

# Cache the old visibility before changing it so the two branches cannot
# trigger one after the other.
scoreboard players set @s takis.ray 0
execute if entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,limit=1,nbt={Invisible:1b}] run scoreboard players set @s takis.ray 1
execute if score @s takis.ray matches 0 run data modify entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,limit=1] Invisible set value 1b
execute if score @s takis.ray matches 1 run data modify entity @e[type=#invisible:item/frames,tag=takis.invisible_frame_target,limit=1] Invisible set value 0b
tag @e[type=#invisible:item/frames,tag=takis.invisible_frame_target] remove takis.invisible_frame_target
