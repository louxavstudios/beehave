scoreboard players set #cart.step.ok takis.cart 0
execute rotated ~ 0 positioned ^-0.25 ^ ^ if block ~ ~ ~ minecraft:air positioned ~ ~-0.2 ~ unless block ~ ~ ~ minecraft:air run scoreboard players set #cart.step.ok takis.cart 1
execute if score #cart.step.ok takis.cart matches 1 rotated ~ 0 positioned ^-0.25 ^ ^ run tp @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] ~ ~ ~
execute if score #cart.step.ok takis.cart matches 1 run scoreboard players remove @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] takis.cart 250
execute if score #cart.step.ok takis.cart matches 0 run scoreboard players set @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] takis.cart 0
execute if score @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] takis.cart matches 250.. at @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] rotated as @s run function minecart:.dev/extra/step/right
