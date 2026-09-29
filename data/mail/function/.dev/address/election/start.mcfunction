execute if score #election.active mail.sync matches 1 run return 0
scoreboard players set #election.active mail.sync 1
scoreboard players set #maximum mail.sync -1
scoreboard players set @e[type=minecraft:marker,tag=takis.mail_sender] mail.sync 0
tag @e[type=minecraft:marker,tag=takis.mail_sender] remove takis.mail_count_pending
tag @e[type=minecraft:marker,tag=takis.mail_sender] add takis.mail_count_pending
execute unless entity @e[type=minecraft:marker,tag=takis.mail_count_pending] run function mail:.dev/address/election/finalize