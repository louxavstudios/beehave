advancement revoke @s only creative:hand/using/book
execute unless predicate creative:sneaking run return 0
execute if score @s takis.divine.cool matches 1.. run return 0
execute if score @s takis.divine.latch matches 1.. run return 0
scoreboard players set @s takis.divine.cool 20
scoreboard players set @s takis.divine.latch 1
scoreboard players set @s takis.divine.calc -1
execute if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{takis_creative_hand:true}] run scoreboard players set @s takis.divine.calc 1
execute if score @s takis.divine.calc matches 1 run function creative:.dev/hand/use/mainhand
execute if score @s takis.divine.calc matches -1 if items entity @s weapon.offhand minecraft:paper[minecraft:custom_data~{takis_creative_hand:true}] run function creative:.dev/hand/use/offhand
