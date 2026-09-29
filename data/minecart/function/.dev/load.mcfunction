scoreboard objectives add takis.cart dummy
scoreboard players add #cart.max takis.cart 0
execute unless score #cart.max takis.cart matches 50..5000 run scoreboard players set #cart.max takis.cart 350
scoreboard players set #cart.accel.div takis.cart 4
scoreboard players set #cart.vector.scale takis.cart 1000
scoreboard players set #cart.native.cap takis.cart 400
scoreboard players operation #cart.accel takis.cart = #cart.max takis.cart
scoreboard players operation #cart.accel takis.cart /= #cart.accel.div takis.cart
execute if score #cart.accel takis.cart matches ..0 run scoreboard players set #cart.accel takis.cart 1
scoreboard players operation #cart.extra takis.cart = #cart.max takis.cart
scoreboard players operation #cart.extra takis.cart -= #cart.native.cap takis.cart
execute if score #cart.extra takis.cart matches ..0 run scoreboard players set #cart.extra takis.cart 0
scoreboard players set #phase takis.cart 0

tellraw @a {"text":"Loaded Minecart","color":"yellow"}
