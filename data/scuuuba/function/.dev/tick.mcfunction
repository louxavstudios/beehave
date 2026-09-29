scoreboard players add #phase takis.scuba.tick 1
execute if score #phase takis.scuba.tick matches 20.. run scoreboard players set #phase takis.scuba.tick 0
# Turn held glass blocks named exactly Scuuuba into wearable diving glass.
execute if score #phase takis.scuba.tick matches 3 as @a run function scuuuba:.dev/prepare/inventory
execute as @a if items entity @s weapon.mainhand #scuuuba:scuuuba/glass[minecraft:custom_data~{takis_scuuuba:true}] run item modify entity @s weapon.mainhand scuuuba:make_scuuuba
execute as @a if items entity @s weapon.offhand #scuuuba:scuuuba/glass[minecraft:custom_data~{takis_scuuuba:true}] run item modify entity @s weapon.offhand scuuuba:make_scuuuba
execute as @a if items entity @s armor.head #scuuuba:scuuuba/glass[minecraft:custom_data~{takis_scuuuba:true}] run item modify entity @s armor.head scuuuba:make_scuuuba
execute as @a if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{takis_scuuuba:true}] run item modify entity @s weapon.mainhand scuuuba:make_scuuuba
execute as @a if items entity @s weapon.offhand minecraft:paper[minecraft:custom_data~{takis_scuuuba:true}] run item modify entity @s weapon.offhand scuuuba:make_scuuuba
execute as @a if items entity @s armor.head minecraft:paper[minecraft:custom_data~{takis_scuuuba:true}] run item modify entity @s armor.head scuuuba:make_scuuuba
execute as @a if items entity @s weapon.mainhand minecraft:turtle_helmet[minecraft:custom_data~{takis_scuuuba:true}] run item modify entity @s weapon.mainhand scuuuba:make_scuuuba
execute as @a if items entity @s weapon.offhand minecraft:turtle_helmet[minecraft:custom_data~{takis_scuuuba:true}] run item modify entity @s weapon.offhand scuuuba:make_scuuuba
execute as @a if items entity @s armor.head minecraft:turtle_helmet[minecraft:custom_data~{takis_scuuuba:true}] run item modify entity @s armor.head scuuuba:make_scuuuba
execute as @a if items entity @s weapon.mainhand #scuuuba:scuuuba/glass[minecraft:custom_name="Scuuuba"] unless items entity @s weapon.mainhand *[minecraft:custom_data~{takis_scuuuba:true}] run item modify entity @s weapon.mainhand scuuuba:make_scuuuba
execute as @a if items entity @s weapon.offhand #scuuuba:scuuuba/glass[minecraft:custom_name="Scuuuba"] unless items entity @s weapon.offhand *[minecraft:custom_data~{takis_scuuuba:true}] run item modify entity @s weapon.offhand scuuuba:make_scuuuba
function scuuuba:.dev/runtime
