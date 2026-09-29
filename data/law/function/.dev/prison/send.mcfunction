execute unless entity @e[type=minecraft:marker,tag=law.prison_cell] run scoreboard players set @s law.event 6
execute unless entity @e[type=minecraft:marker,tag=law.prison_cell] run scoreboard players set @s law.notice 100
execute unless entity @e[type=minecraft:marker,tag=law.prison_cell] run return 0
execute at @e[type=minecraft:marker,tag=law.prison_cell,sort=random,limit=1] run tp @s ~ ~ ~
scoreboard players set @s law.prisoned 1
scoreboard players set @s law.event 7
scoreboard players set @s law.notice 100
