advancement revoke @s only law:villager/trade
execute unless score #enabled law.control matches 1 run return 0
scoreboard players add @s law.credit 1
execute if score @s law.credit matches 43.. run scoreboard players set @s law.credit 42
scoreboard players set @s law.event 5
scoreboard players set @s law.notice 100
