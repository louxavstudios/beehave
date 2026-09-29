# Add the view-relative impulse to current horizontal velocity. Vanilla ground
# friction remains active; the cap keeps off-road carts controllable.
execute store result score #cart.tx takis.cart run data get entity @e[type=minecraft:marker,tag=takis.cart_vector,limit=1] Pos[0] 1000
execute store result score #cart.tz takis.cart run data get entity @e[type=minecraft:marker,tag=takis.cart_vector,limit=1] Pos[2] 1000
execute store result score #cart.x takis.cart run data get entity @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] Pos[0] 1000
execute store result score #cart.z takis.cart run data get entity @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] Pos[2] 1000
scoreboard players operation #cart.tx takis.cart -= #cart.x takis.cart
scoreboard players operation #cart.tz takis.cart -= #cart.z takis.cart
scoreboard players operation #cart.tx takis.cart *= #cart.accel takis.cart
scoreboard players operation #cart.tz takis.cart *= #cart.accel takis.cart
scoreboard players operation #cart.tx takis.cart /= #cart.vector.scale takis.cart
scoreboard players operation #cart.tz takis.cart /= #cart.vector.scale takis.cart
execute store result score #cart.x takis.cart run data get entity @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] Motion[0] 1000
execute store result score #cart.z takis.cart run data get entity @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] Motion[2] 1000
scoreboard players operation #cart.x takis.cart += #cart.tx takis.cart
scoreboard players operation #cart.z takis.cart += #cart.tz takis.cart
scoreboard players set #cart.min takis.cart 0
scoreboard players operation #cart.min takis.cart -= #cart.max takis.cart
execute if score #cart.x takis.cart > #cart.max takis.cart run scoreboard players operation #cart.x takis.cart = #cart.max takis.cart
execute if score #cart.x takis.cart < #cart.min takis.cart run scoreboard players operation #cart.x takis.cart = #cart.min takis.cart
execute if score #cart.z takis.cart > #cart.max takis.cart run scoreboard players operation #cart.z takis.cart = #cart.max takis.cart
execute if score #cart.z takis.cart < #cart.min takis.cart run scoreboard players operation #cart.z takis.cart = #cart.min takis.cart
execute store result entity @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] Motion[0] double 0.001 run scoreboard players get #cart.x takis.cart
execute store result entity @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] Motion[2] double 0.001 run scoreboard players get #cart.z takis.cart
kill @e[type=minecraft:marker,tag=takis.cart_vector]
