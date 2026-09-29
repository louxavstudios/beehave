execute as @e[type=minecraft:marker,tag=takis.cultural_log_box] at @s run function godgift:.dev/log/check/box
execute as @a run scoreboard players set @s takis.ray 0
execute as @a at @s anchored eyes positioned ^ ^ ^0.1 run function godgift:.dev/log/find/box
