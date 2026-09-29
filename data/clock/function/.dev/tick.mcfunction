scoreboard players add #phase calendar 1
execute if score #phase calendar matches 20.. run scoreboard players set #phase calendar 0
execute if score #phase calendar matches 0 run execute as @a if items entity @s weapon.mainhand minecraft:clock run function clock:.dev/display
execute if score #phase calendar matches 0 run execute as @a unless items entity @s weapon.mainhand minecraft:clock if items entity @s weapon.offhand minecraft:clock run function clock:.dev/display
execute if score #phase calendar matches 0 run execute as @a unless items entity @s weapon.mainhand minecraft:clock unless items entity @s weapon.offhand minecraft:clock at @s if entity @e[type=#invisible:item/frames,distance=..6,nbt={Item:{id:"minecraft:clock"}},limit=1] run scoreboard players set @s takis.ray 0
execute if score #phase calendar matches 0 run execute as @a unless items entity @s weapon.mainhand minecraft:clock unless items entity @s weapon.offhand minecraft:clock at @s if entity @e[type=#invisible:item/frames,distance=..6,nbt={Item:{id:"minecraft:clock"}},limit=1] anchored eyes positioned ^ ^ ^0.1 run function clock:.dev/raycast
