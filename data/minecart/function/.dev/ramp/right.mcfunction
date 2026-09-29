tag @e[type=#minecart:drivable/minecarts,tag=takis.cart_target] remove takis.cart_ramp
execute rotated ~ 0 positioned ^-0.7 ^ ^ if block ~ ~ ~ #minecraft:slabs run tag @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] add takis.cart_ramp
execute rotated ~ 0 positioned ^-0.7 ^ ^ if block ~ ~ ~ #minecraft:stairs run tag @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] add takis.cart_ramp
execute positioned ~ ~-0.2 ~ if block ~ ~ ~ #minecraft:slabs run tag @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] add takis.cart_ramp
execute positioned ~ ~-0.2 ~ if block ~ ~ ~ #minecraft:stairs run tag @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] add takis.cart_ramp
execute if entity @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,tag=takis.cart_ramp,limit=1] rotated ~ 0 positioned ^-0.7 ^ ^ if block ~ ~1 ~ minecraft:air run data modify entity @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] Motion[1] set value 0.22d
execute positioned ~ ~-0.2 ~ if block ~ ~ ~ minecraft:dirt_path rotated ~ 0 positioned ^-0.7 ^0.2 ^ unless block ~ ~ ~ #minecart:minecart/path/clearance if block ~ ~1 ~ #minecart:minecart/path/clearance run tp @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] ~ ~0.0625 ~
tag @e[type=#minecart:drivable/minecarts,tag=takis.cart_target] remove takis.cart_ramp
