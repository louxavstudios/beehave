# spawn marker to get player yaw
# @s = marker
# at @s
# run from find_book/get_book_slot

tp @s @p[tag=takis.bs_target]
execute store result score $rotation takis.bs.data run data get entity @s Rotation[0]
execute if score $rotation takis.bs.data matches -45..44 run scoreboard players set $rotation takis.bs.data 2
execute if score $rotation takis.bs.data matches -135..-45 run scoreboard players set $rotation takis.bs.data 4
execute if score $rotation takis.bs.data matches 45..135 run scoreboard players set $rotation takis.bs.data 3
execute unless score $rotation takis.bs.data matches 2..4 run scoreboard players set $rotation takis.bs.data 1
kill @s
