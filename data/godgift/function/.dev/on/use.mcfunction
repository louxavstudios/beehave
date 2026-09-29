advancement revoke @s only godgift:using/book
execute unless score @s takis.cultural matches 1.. if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{takis_cultural:true}] run function godgift:.dev/execute
execute unless score @s takis.cultural matches 1.. if items entity @s weapon.offhand minecraft:paper[minecraft:custom_data~{takis_cultural:true}] run function godgift:.dev/execute/offhand
