execute store result score @s kingdom.block.x run data get entity @s Pos[0] 1
execute store result score @s kingdom.block.z run data get entity @s Pos[2] 1
# Snapshot 5+ scoreboard division floors negative coordinates correctly.
scoreboard players operation @s kingdom.block.x /= #sixteen kingdom.meta
scoreboard players operation @s kingdom.block.z /= #sixteen kingdom.meta
