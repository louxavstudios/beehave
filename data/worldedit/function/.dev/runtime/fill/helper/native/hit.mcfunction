execute unless items entity @s weapon.mainhand minecraft:wooden_axe[minecraft:custom_data~{takis_fill_helper:true}] unless items entity @s weapon.mainhand minecraft:wooden_axe[minecraft:custom_name="worldedit"] unless items entity @s weapon.mainhand minecraft:wooden_axe[minecraft:custom_name~{text:"worldedit"}] run return 0
execute unless score @s takis.fill.id matches 1.. run function worldedit:.dev/runtime/fill/helper/assign/id
scoreboard players set @s takis.fill.found 0
scoreboard players set @s takis.fill.ray 0
execute at @s anchored eyes positioned ^ ^ ^0.1 run function worldedit:.dev/runtime/fill/helper/raycast
execute unless score @s takis.fill.found matches 1 run return 0
function worldedit:.dev/runtime/fill/helper/select/pos1
return 0
