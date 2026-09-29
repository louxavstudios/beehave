scoreboard players add #phase takis.text.cool 1
execute if score #phase takis.text.cool matches 20.. run scoreboard players set #phase takis.text.cool 0
# A named name tag becomes a useable floating-text placement tool while held.
execute as @a if items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_name] unless items entity @s weapon.mainhand *[minecraft:custom_data~{takis_floating_text_tag:true}] run item modify entity @s weapon.mainhand floating:make_floating_text_tag
execute as @a if items entity @s weapon.offhand minecraft:name_tag[minecraft:custom_name] unless items entity @s weapon.offhand *[minecraft:custom_data~{takis_floating_text_tag:true}] run item modify entity @s weapon.offhand floating:make_floating_text_tag
scoreboard players remove @a[scores={takis.text.cool=1..}] takis.text.cool 1
# Migrate older placed text to the same 32-block, wall-occluded display rules.
execute if score #phase takis.text.cool matches 2 as @e[type=minecraft:text_display,tag=takis.floating_text] unless data entity @s {see_through:0b,view_range:0.5f} run data merge entity @s {see_through:0b,view_range:0.5f}
