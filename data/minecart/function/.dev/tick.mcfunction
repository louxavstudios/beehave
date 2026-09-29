scoreboard players add #phase takis.cart 1
execute if score #phase takis.cart matches 20.. run scoreboard players set #phase takis.cart 0
# A held minecart temporarily uses a minecart-backed spawn item so right-click
# can place it on ordinary blocks. Restore parked inventory proxies as soon as
# the player selects another item, preserving normal storage and recipe use.
execute if score #phase takis.cart matches 13 as @a unless items entity @s weapon.mainhand minecraft:pig_spawn_egg[minecraft:custom_data~{takis_ground_minecart:true}] run function minecart:.dev/restore/inventory
execute as @a if items entity @s weapon.mainhand minecraft:minecart run item modify entity @s weapon.mainhand minecart:make_ground_minecart
function minecart:.dev/runtime
