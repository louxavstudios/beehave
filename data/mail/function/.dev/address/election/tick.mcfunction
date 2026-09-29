execute unless score #election.active mail.sync matches 1 run return 0
execute as @e[type=minecraft:marker,tag=takis.mail_count_pending,limit=1,sort=arbitrary] at @s run function mail:.dev/address/election/count/one
execute unless entity @e[type=minecraft:marker,tag=takis.mail_count_pending] run function mail:.dev/address/election/finalize