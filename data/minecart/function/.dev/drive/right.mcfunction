tag @e[type=#minecart:drivable/minecarts,tag=takis.cart_target] remove takis.cart_target
execute on vehicle if entity @s[type=#minecart:drivable/minecarts] run tag @s add takis.cart_target
execute unless entity @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] run return 0
execute at @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] if block ~ ~ ~ #minecraft:rails run return 0
execute at @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] positioned ~ ~-0.2 ~ if block ~ ~ ~ minecraft:air run return 0
execute at @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] rotated as @s run function minecart:.dev/move/right
