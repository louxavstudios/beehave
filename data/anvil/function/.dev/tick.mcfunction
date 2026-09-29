scoreboard players add #phase takis.anvil.delay 1
execute if score #phase takis.anvil.delay matches 20.. run scoreboard players set #phase takis.anvil.delay 0
# Crouching suppresses vanilla's anvil interaction statistic. Temporarily give
# held main-hand ingots a block transformer so the item itself repairs a
# damaged/chipped anvil, consumes one ingot, and never opens the interface.
execute as @a if predicate anvil:sneaking if items entity @s weapon.mainhand minecraft:iron_ingot unless items entity @s weapon.mainhand *[minecraft:block_transformer] run item modify entity @s weapon.mainhand anvil:make_iron_repair_tool
execute as @a unless predicate anvil:sneaking if items entity @s weapon.mainhand minecraft:iron_ingot[minecraft:block_transformer] run item modify entity @s weapon.mainhand anvil:restore_iron_ingot
# Keep a repaired anvil absent for one complete player tick. Vanilla then closes
# the menu opened by the repair click before the repaired block is restored.
scoreboard players add @e[type=minecraft:marker,tag=takis.anvil_restore] takis.anvil.delay 1
execute as @e[type=minecraft:marker,tag=takis.anvil_restore,scores={takis.anvil.delay=2..}] at @s run function anvil:.dev/repair/restore

# Legacy fallback for repair clicks queued by the earlier statistic-based
# implementation. New crouched repairs are handled directly by the ingot.
execute as @a[scores={takis.anvil.use=1..}] if predicate anvil:sneaking if items entity @s weapon.mainhand minecraft:iron_ingot run function anvil:.dev/repair/on/use
scoreboard players set @a[scores={takis.anvil.use=1..}] takis.anvil.use 0
execute if score #phase takis.anvil.delay matches 0 run scoreboard players set @a takis.ray 0
execute if score #phase takis.anvil.delay matches 0 as @a at @s anchored eyes positioned ^ ^ ^0.1 run function anvil:.dev/repair/hint/raycast
