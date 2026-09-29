# collect data on the looked at book
# @s = player not in spectator mode
# positioned ^ ^ ^-0.05 before chiseled bookshelf
# run from find_book/raycast

# stop the raycast
scoreboard players set $raycast takis.bs.data 0

# get the slot being looked at
scoreboard players set $evaluate takis.bs.data 1
tag @s add takis.bs_target
execute summon marker run function bookshelf:.dev/inspector/find/book/get/book/slot
tag @s remove takis.bs_target

# if evaluation failed stop the function
execute if score $evaluate takis.bs.data matches 0 run return 0

# store book data in storage
execute if score $rotation takis.bs.data matches 1 run data modify storage bookshelf:inspector book_data set from block ~ ~ ~-1 Items
execute if score $rotation takis.bs.data matches 2 run data modify storage bookshelf:inspector book_data set from block ~ ~ ~1 Items
execute if score $rotation takis.bs.data matches 3 run data modify storage bookshelf:inspector book_data set from block ~-1 ~ ~ Items
execute if score $rotation takis.bs.data matches 4 run data modify storage bookshelf:inspector book_data set from block ~1 ~ ~ Items
execute if score $book_slot takis.bs.data matches 0 run data modify storage bookshelf:inspector book_data set from storage bookshelf:inspector book_data[{Slot:0b}]
execute if score $book_slot takis.bs.data matches 1 run data modify storage bookshelf:inspector book_data set from storage bookshelf:inspector book_data[{Slot:1b}]
execute if score $book_slot takis.bs.data matches 2 run data modify storage bookshelf:inspector book_data set from storage bookshelf:inspector book_data[{Slot:2b}]
execute if score $book_slot takis.bs.data matches 3 run data modify storage bookshelf:inspector book_data set from storage bookshelf:inspector book_data[{Slot:3b}]
execute if score $book_slot takis.bs.data matches 4 run data modify storage bookshelf:inspector book_data set from storage bookshelf:inspector book_data[{Slot:4b}]
execute if score $book_slot takis.bs.data matches 5 run data modify storage bookshelf:inspector book_data set from storage bookshelf:inspector book_data[{Slot:5b}]

# check if slot actually has a book, otherwise stop the function
# this does not fail evaluation, so there is no delay in case the player is scanning over a half-filled bookshelf
execute unless data storage bookshelf:inspector book_data.id run return 0

# find top-left location of this chiseled bookshelf
# 1=north / 2=south / 3=west / 4=east (this is facing direction, so you look against the opposite side of the block)
execute if score $rotation takis.bs.data matches 1 positioned ~ ~ ~-1 align xyz positioned ~0.1875 ~0.5625 ~1.001 rotated 0 0 run function bookshelf:.dev/inspector/process/display/locate/slot
execute if score $rotation takis.bs.data matches 2 positioned ~ ~ ~1 align xyz positioned ~0.8125 ~0.5625 ~-0.001 rotated 180 0 run function bookshelf:.dev/inspector/process/display/locate/slot
execute if score $rotation takis.bs.data matches 3 positioned ~-1 ~ ~ align xyz positioned ~1.001 ~0.5625 ~0.8125 rotated -90 0 run function bookshelf:.dev/inspector/process/display/locate/slot
execute if score $rotation takis.bs.data matches 4 positioned ~1 ~ ~ align xyz positioned ~-0.001 ~0.5625 ~0.1875 rotated 90 0 run function bookshelf:.dev/inspector/process/display/locate/slot

# cleanup storage
data remove storage bookshelf:inspector book_data
