# raycast for a chiseled bookshelf
# @s = player not in spectator mode
# at @s anchored eyes, positioned ^ ^ ^1 + 0.25x (x = 0..11)
# run from evaluate/run
# run from here

scoreboard players remove $simple_raycast takis.bs.data 1

# check for chiseled bookshelves
execute if block ~ ~ ~ chiseled_bookshelf run function bookshelf:.dev/inspector/find/book/prep

# stop raycast when block is hit (including chiseled bookshelf)
execute unless block ~ ~ ~ #bookshelf:bookshelf/inspector/no/collision run scoreboard players set $simple_raycast takis.bs.data 0

execute if score $simple_raycast takis.bs.data matches 1.. positioned ^ ^ ^0.25 run function bookshelf:.dev/inspector/evaluate/raycast
