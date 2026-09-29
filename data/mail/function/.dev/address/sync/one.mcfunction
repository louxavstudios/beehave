$execute as @e[type=minecraft:marker,tag=takis.mail_sender] at @s unless data block ~ ~ ~ Items[{id:"$(item_id)",components:{"minecraft:custom_name":"$(id)"}}] run function mail:.dev/address/insert
