# Glass bottles bypass consumable components in this snapshot. Track progress
# points so level-one players are eligible once they have 11 total XP (level 1
# plus 4 progress points). While crouching with enough XP, temporarily transmute
# held bottles into a marked,
# looking consumable. Restore true vanilla bottles as soon as crouching stops or
# the player no longer has enough XP.
execute as @a store result score @s takis.xp.available run experience query @s points
execute as @a[level=2..] if predicate xp:sneaking if items entity @s weapon.mainhand minecraft:glass_bottle run item modify entity @s weapon.mainhand xp:make_xp_bottle_usable
execute as @a[level=2..] if predicate xp:sneaking if items entity @s weapon.offhand minecraft:glass_bottle run item modify entity @s weapon.offhand xp:make_xp_bottle_usable
execute as @a[level=1,scores={takis.xp.available=4..}] if predicate xp:sneaking if items entity @s weapon.mainhand minecraft:glass_bottle run item modify entity @s weapon.mainhand xp:make_xp_bottle_usable
execute as @a[level=1,scores={takis.xp.available=4..}] if predicate xp:sneaking if items entity @s weapon.offhand minecraft:glass_bottle run item modify entity @s weapon.offhand xp:make_xp_bottle_usable
execute as @a unless predicate xp:sneaking if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{takis_xp_bottle:true}] run item modify entity @s weapon.mainhand xp:restore_glass_bottle
execute as @a unless predicate xp:sneaking if items entity @s weapon.offhand minecraft:paper[minecraft:custom_data~{takis_xp_bottle:true}] run item modify entity @s weapon.offhand xp:restore_glass_bottle
execute as @a[level=..0] if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{takis_xp_bottle:true}] run item modify entity @s weapon.mainhand xp:restore_glass_bottle
execute as @a[level=..0] if items entity @s weapon.offhand minecraft:paper[minecraft:custom_data~{takis_xp_bottle:true}] run item modify entity @s weapon.offhand xp:restore_glass_bottle
execute as @a[level=1,scores={takis.xp.available=..3}] if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{takis_xp_bottle:true}] run item modify entity @s weapon.mainhand xp:restore_glass_bottle
execute as @a[level=1,scores={takis.xp.available=..3}] if items entity @s weapon.offhand minecraft:paper[minecraft:custom_data~{takis_xp_bottle:true}] run item modify entity @s weapon.offhand xp:restore_glass_bottle
