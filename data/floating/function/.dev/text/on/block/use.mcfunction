advancement revoke @s only floating:text/block/use
execute if items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_data~{takis_floating_text_tag:true}] run function floating:.dev/text/try/spawn
execute unless items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_data~{takis_floating_text_tag:true}] if items entity @s weapon.offhand minecraft:name_tag[minecraft:custom_data~{takis_floating_text_tag:true}] run function floating:.dev/text/try/spawn
