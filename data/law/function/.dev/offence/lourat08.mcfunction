advancement revoke @s only law:hurt/lourat08
execute unless score #enabled law.control matches 1 run return 0
scoreboard players remove @s law.credit 1
execute if score @s law.credit matches ..-1 run scoreboard players set @s law.credit 0
damage @s 1 minecraft:generic
scoreboard players set @s law.event 2
scoreboard players set @s law.notice 100
