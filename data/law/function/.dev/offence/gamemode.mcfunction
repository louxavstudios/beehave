execute unless score #enabled law.control matches 1 run return 0
gamemode survival @s
scoreboard players remove @s law.credit 2
execute if score @s law.credit matches ..-1 run scoreboard players set @s law.credit 0
damage @s 2 minecraft:generic
scoreboard players set @s law.event 1
scoreboard players set @s law.notice 100
