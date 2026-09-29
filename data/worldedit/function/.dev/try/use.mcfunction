execute unless items entity @s weapon.mainhand minecraft:shears[minecraft:custom_data~{takis_block_replacer_tool:true}] run return 0
execute if score @s takis.brush matches 1.. run return 0
function worldedit:.dev/activate
execute if score @s takis.brush.ok matches 1 run function worldedit:.dev/brush/damage
execute if items entity @s weapon.mainhand minecraft:shears[minecraft:custom_data~{takis_block_replacer_tool:true}] run item modify entity @s weapon.mainhand worldedit:make_block_replacer_tool
