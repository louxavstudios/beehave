# check which book slot is being looked at
# @s = marker
# at chiseled bookshelf
# run from find_book/find_book

# get y position relative to the block
execute store result score $y takis.bs.data run data get entity @s Pos[1] 100
scoreboard players operation $y takis.bs.data %= #100 takis.bs.data

# get rotation from player yaw and transform it into a score
# 1=north / 2=south / 3=west / 4=east
execute summon marker run function bookshelf:.dev/inspector/find/book/get/rotation

# check if bookshelf is rotated correctly
execute if score $rotation takis.bs.data matches 1 unless block ~ ~ ~-1 chiseled_bookshelf[facing=south] run scoreboard players set $evaluate takis.bs.data 0
execute if score $rotation takis.bs.data matches 2 unless block ~ ~ ~1 chiseled_bookshelf[facing=north] run scoreboard players set $evaluate takis.bs.data 0
execute if score $rotation takis.bs.data matches 3 unless block ~-1 ~ ~ chiseled_bookshelf[facing=east] run scoreboard players set $evaluate takis.bs.data 0
execute if score $rotation takis.bs.data matches 4 unless block ~1 ~ ~ chiseled_bookshelf[facing=west] run scoreboard players set $evaluate takis.bs.data 0
# stop if evaluation failed
execute if score $evaluate takis.bs.data matches 0 run kill @s
execute if score $evaluate takis.bs.data matches 0 run return 0

# check if the marker is located on the front face of the bookshelf
execute if score $rotation takis.bs.data matches 1..2 store result score $face_check takis.bs.data run data get entity @s Pos[2] 100
execute if score $rotation takis.bs.data matches 3..4 store result score $face_check takis.bs.data run data get entity @s Pos[0] 100
scoreboard players operation $face_check takis.bs.data %= #100 takis.bs.data
execute unless score $face_check takis.bs.data matches 0..5 unless score $face_check takis.bs.data matches 94..99 run scoreboard players set $evaluate takis.bs.data 0
# stop if evaluation failed
execute if score $evaluate takis.bs.data matches 0 run kill @s
execute if score $evaluate takis.bs.data matches 0 run return 0

# store either the x or z coord depending on player facing
execute if score $rotation takis.bs.data matches 1..2 store result score $xz takis.bs.data run data get entity @s Pos[0] 100
execute if score $rotation takis.bs.data matches 3..4 store result score $xz takis.bs.data run data get entity @s Pos[2] 100
scoreboard players operation $xz takis.bs.data %= #100 takis.bs.data

# book slots:
# 0 1 2
# 3 4 5
scoreboard players set $book_slot takis.bs.data 0
execute if score $xz takis.bs.data matches 33.. unless score $rotation takis.bs.data matches 2..3 run scoreboard players add $book_slot takis.bs.data 1
execute if score $xz takis.bs.data matches 66.. unless score $rotation takis.bs.data matches 2..3 run scoreboard players add $book_slot takis.bs.data 1
execute if score $xz takis.bs.data matches ..33 if score $rotation takis.bs.data matches 2..3 run scoreboard players add $book_slot takis.bs.data 1
execute if score $xz takis.bs.data matches ..66 if score $rotation takis.bs.data matches 2..3 run scoreboard players add $book_slot takis.bs.data 1
execute if score $y takis.bs.data matches ..50 run scoreboard players add $book_slot takis.bs.data 3

# remove marker
kill @s
