# A mounted player's directional input drives only off-rail minecarts that have
# land directly beneath them. Each player is processed sequentially, so the
# temporary target tag cannot mix two carts.
execute as @a if predicate minecart:minecart_forward at @s run function minecart:.dev/drive/forward
execute as @a if predicate minecart:minecart_backward at @s run function minecart:.dev/drive/backward
execute as @a if predicate minecart:minecart_left at @s run function minecart:.dev/drive/left
execute as @a if predicate minecart:minecart_right at @s run function minecart:.dev/drive/right
tag @e[type=#minecart:drivable/minecarts,tag=takis.cart_target] remove takis.cart_target
tag @e[type=#minecart:drivable/minecarts,tag=takis.cart_ramp] remove takis.cart_ramp
kill @e[type=minecraft:marker,tag=takis.cart_vector]
