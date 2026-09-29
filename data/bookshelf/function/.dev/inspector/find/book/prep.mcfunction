# prep looking for a looked at book
# @s = player not in spectator mode
# at unspecified
# run from evaluate/raycast

# start a more precise raycast
scoreboard players set $raycast takis.bs.data 50
execute at @s anchored eyes positioned ^ ^ ^1 run function bookshelf:.dev/inspector/find/book/raycast
