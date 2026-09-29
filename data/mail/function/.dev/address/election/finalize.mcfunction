# Keep the current authority on ties, matching the original election behavior.
execute as @e[type=minecraft:marker,tag=takis.mail_master] unless score @s mail.sync = #maximum mail.sync run tag @s remove takis.mail_master
execute unless entity @e[type=minecraft:marker,tag=takis.mail_master] as @e[type=minecraft:marker,tag=takis.mail_sender] if score @s mail.sync = #maximum mail.sync run tag @s add takis.mail_master_candidate
execute unless entity @e[type=minecraft:marker,tag=takis.mail_master] run tag @e[type=minecraft:marker,tag=takis.mail_master_candidate,sort=arbitrary,limit=1] add takis.mail_master
tag @e[type=minecraft:marker,tag=takis.mail_master_candidate] remove takis.mail_master_candidate
scoreboard players set #election.active mail.sync 0

execute as @e[type=minecraft:marker,tag=takis.mail_master,limit=1] at @s if score #network.initialized mail.addresses matches 0 run function mail:.dev/address/initialize
execute if score #network.initialized mail.addresses matches 1 if entity @e[type=minecraft:marker,tag=takis.mail_sender,tag=!takis.mail_address_synced] run function mail:.dev/address/sync/registry