scoreboard players add #text.next takis.text.id 1
summon minecraft:text_display ~ ~ ~ {Tags:["takis.floating_text","takis.floating_text_new"],billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b,view_range:0.5f,text:{text:"Text"}}
summon minecraft:interaction ~ ~-0.15 ~ {Tags:["takis.floating_text_hitbox","takis.floating_text_hitbox_new"],width:2.0f,height:0.7f,response:1b}
scoreboard players operation @e[type=minecraft:text_display,tag=takis.floating_text_new,limit=1,sort=nearest] takis.text.id = #text.next takis.text.id
scoreboard players operation @e[type=minecraft:interaction,tag=takis.floating_text_hitbox_new,limit=1,sort=nearest] takis.text.id = #text.next takis.text.id
execute if items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_data~{takis_floating_text_tag:true}] run data modify entity @e[type=minecraft:text_display,tag=takis.floating_text_new,limit=1,sort=nearest] text set from entity @s SelectedItem.components."minecraft:custom_name"
execute unless items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_data~{takis_floating_text_tag:true}] if items entity @s weapon.offhand minecraft:name_tag[minecraft:custom_data~{takis_floating_text_tag:true}] run data modify entity @e[type=minecraft:text_display,tag=takis.floating_text_new,limit=1,sort=nearest] text set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_name"
execute if items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_data~{takis_floating_text_tag:true}] run item modify entity @s weapon.mainhand floating:consume
execute unless items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_data~{takis_floating_text_tag:true}] if items entity @s weapon.offhand minecraft:name_tag[minecraft:custom_data~{takis_floating_text_tag:true}] run item modify entity @s weapon.offhand floating:consume
tag @e[type=minecraft:text_display,tag=takis.floating_text_new] remove takis.floating_text_new
tag @e[type=minecraft:interaction,tag=takis.floating_text_hitbox_new] remove takis.floating_text_hitbox_new
