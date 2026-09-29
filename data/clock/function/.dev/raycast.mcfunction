# Detect clock-filled normal and glow item frames near the player's crosshair.
execute if entity @e[type=minecraft:item_frame,distance=..0.45,sort=nearest,limit=1,nbt={Item:{id:"minecraft:clock"}}] run function clock:.dev/display
execute if entity @e[type=minecraft:glow_item_frame,distance=..0.45,sort=nearest,limit=1,nbt={Item:{id:"minecraft:clock"}}] run function clock:.dev/display
execute if entity @e[type=minecraft:item_frame,distance=..0.45,sort=nearest,limit=1,nbt={Item:{id:"minecraft:clock"}}] run scoreboard players set @s takis.ray 100
execute if entity @e[type=minecraft:glow_item_frame,distance=..0.45,sort=nearest,limit=1,nbt={Item:{id:"minecraft:clock"}}] run scoreboard players set @s takis.ray 100

# Continue through air up to approximately five blocks, stopping at solid walls.
execute if block ~ ~ ~ minecraft:air if score @s takis.ray matches ..19 run scoreboard players add @s takis.ray 1
execute if block ~ ~ ~ minecraft:air if score @s takis.ray matches ..19 positioned ^ ^ ^0.25 run function clock:.dev/raycast
