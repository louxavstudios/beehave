scoreboard players operation @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] takis.cart += #cart.extra takis.cart
execute if score @e[type=#minecart:drivable/minecarts,tag=takis.cart_target,limit=1] takis.cart matches 250.. run function minecart:.dev/extra/step/forward
