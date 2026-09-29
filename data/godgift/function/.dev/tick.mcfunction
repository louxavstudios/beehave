scoreboard players add #phase takis.cultural 1
execute if score #phase takis.cultural matches 20.. run scoreboard players set #phase takis.cultural 0
execute if score #phase takis.cultural matches 18 as @a run function godgift:.dev/prepare/inventory

# A Book or Book and Quill named Book of God becomes a command book. Legacy
# Cultural books migrate automatically and no enchantment is required.
scoreboard players add @a takis.cultural 0
execute as @a run function godgift:.dev/prepare/slot {slot:"weapon.mainhand"}
execute as @a run function godgift:.dev/prepare/slot {slot:"weapon.offhand"}
execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data~{takis_cultural:true},minecraft:max_damage] run item modify entity @s weapon.mainhand godgift:remove_cultural_durability
execute as @a if items entity @s weapon.offhand *[minecraft:custom_data~{takis_cultural:true},minecraft:max_damage] run item modify entity @s weapon.offhand godgift:remove_cultural_durability
execute as @a unless predicate godgift:sneaking run scoreboard players set @s takis.cultural 0
execute as @a unless predicate godgift:sneaking if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{takis_cultural:true}] run item modify entity @s weapon.mainhand godgift:restore_cultural_book
execute as @a unless predicate godgift:sneaking if items entity @s weapon.offhand minecraft:paper[minecraft:custom_data~{takis_cultural:true}] run item modify entity @s weapon.offhand godgift:restore_cultural_book
execute as @a[scores={takis.cultural=0}] if predicate godgift:sneaking if items entity @s weapon.mainhand minecraft:writable_book[minecraft:custom_data~{takis_cultural:true}] run item modify entity @s weapon.mainhand godgift:make_cultural_usable
execute as @a[scores={takis.cultural=0}] if predicate godgift:sneaking if items entity @s weapon.offhand minecraft:writable_book[minecraft:custom_data~{takis_cultural:true}] run item modify entity @s weapon.offhand godgift:make_cultural_usable
# Poll mutable synchronized boxes once per second on separate phases.
execute if score #phase takis.cultural matches 7 run function godgift:.dev/log/tick
