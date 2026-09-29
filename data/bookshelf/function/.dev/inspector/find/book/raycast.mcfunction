# raycast for a chiseled bookshelf
# @s = player not in spectator mode
# at @s anchored eyes, positioned ^ ^ ^1 + 0.05x (x = 0..50)
# run from find_book/prep
# run from here

scoreboard players remove $raycast takis.bs.data 1

# check for bookshelf slightly up ahead
execute if block ^ ^ ^0.0501 chiseled_bookshelf run function bookshelf:.dev/inspector/find/book/find/book

# if a block is hit stop the raycast
execute unless block ~ ~ ~ #bookshelf:bookshelf/inspector/no/collision run scoreboard players set $raycast takis.bs.data 0

execute if score $raycast takis.bs.data matches 1.. positioned ^ ^ ^0.05 run function bookshelf:.dev/inspector/find/book/raycast
