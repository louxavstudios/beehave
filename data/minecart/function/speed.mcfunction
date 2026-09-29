# Usage: /function minecart:speed {speed:7}
# `speed` is the off-road top speed in blocks per second, clamped from 1 to 100.
scoreboard players set #cart.accel.div takis.cart 4
scoreboard players set #cart.vector.scale takis.cart 1000
scoreboard players set #cart.native.cap takis.cart 400
$scoreboard players set #cart.speed.bps takis.cart $(speed)
execute if score #cart.speed.bps takis.cart matches ..0 run scoreboard players set #cart.speed.bps takis.cart 1
execute if score #cart.speed.bps takis.cart matches 101.. run scoreboard players set #cart.speed.bps takis.cart 100
scoreboard players set #cart.max takis.cart 50
scoreboard players operation #cart.max takis.cart *= #cart.speed.bps takis.cart
scoreboard players operation #cart.accel takis.cart = #cart.max takis.cart
scoreboard players operation #cart.accel takis.cart /= #cart.accel.div takis.cart
execute if score #cart.accel takis.cart matches ..0 run scoreboard players set #cart.accel takis.cart 1
scoreboard players operation #cart.extra takis.cart = #cart.max takis.cart
scoreboard players operation #cart.extra takis.cart -= #cart.native.cap takis.cart
execute if score #cart.extra takis.cart matches ..0 run scoreboard players set #cart.extra takis.cart 0
