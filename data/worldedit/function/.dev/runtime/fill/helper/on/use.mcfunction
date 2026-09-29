advancement revoke @s only worldedit:fill/helper/using
execute unless items entity @s weapon.mainhand minecraft:wooden_axe[minecraft:custom_data~{takis_fill_helper:true}] unless items entity @s weapon.mainhand minecraft:wooden_axe[minecraft:custom_name="worldedit"] unless items entity @s weapon.mainhand minecraft:wooden_axe[minecraft:custom_name~{text:"worldedit"}] run return 0
function worldedit:.dev/runtime/fill/helper/right/click
