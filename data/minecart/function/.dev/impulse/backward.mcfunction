kill @e[type=minecraft:marker,tag=takis.cart_vector]
execute rotated ~ 0 positioned ^ ^ ^-1.0 run summon minecraft:marker ~ ~ ~ {Tags:["takis.cart_vector"]}
function minecart:.dev/impulse/apply
