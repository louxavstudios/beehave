scoreboard players operation #text.target takis.text.id = @e[type=minecraft:interaction,tag=takis.floating_text_target,limit=1] takis.text.id
tag @e[type=minecraft:text_display,tag=takis.floating_text_refund] remove takis.floating_text_refund
execute as @e[type=minecraft:text_display,tag=takis.floating_text] if score @s takis.text.id = #text.target takis.text.id run tag @s add takis.floating_text_refund
tag @e[type=minecraft:item,tag=takis.floating_text_refund_item] remove takis.floating_text_refund_item
execute at @e[type=minecraft:interaction,tag=takis.floating_text_target,limit=1] run summon minecraft:item ~ ~ ~ {Tags:["takis.floating_text_refund_item"],PickupDelay:0s,Item:{id:"minecraft:name_tag",count:1}}
execute if entity @e[type=minecraft:text_display,tag=takis.floating_text_refund,limit=1] run data modify entity @e[type=minecraft:item,tag=takis.floating_text_refund_item,limit=1,sort=nearest] Item.components."minecraft:custom_name" set from entity @e[type=minecraft:text_display,tag=takis.floating_text_refund,limit=1] text
kill @e[type=minecraft:text_display,tag=takis.floating_text_refund]
kill @e[type=minecraft:interaction,tag=takis.floating_text_target,limit=1]
tag @e[type=minecraft:item,tag=takis.floating_text_refund_item] remove takis.floating_text_refund_item
