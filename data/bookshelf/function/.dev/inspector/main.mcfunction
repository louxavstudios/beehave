schedule function bookshelf:.dev/inspector/main 8

# reset keep scores for present text_displays
scoreboard players set @e[type=text_display, tag=takis.bs_display.active] takis.bs.keep 0

# process players
# do not check for chiseled bookshelves if the player moved anyway, allow some leniency for walking to avoid nudging removing the display
execute as @a[gamemode=!spectator] unless score @s takis.bs.walk matches 100.. unless score @s takis.bs.sprint matches 1.. unless score @s takis.bs.fall matches 1.. run function bookshelf:.dev/inspector/evaluate/run

# reset player scores
scoreboard players reset @a takis.bs.walk
scoreboard players reset @a takis.bs.sprint
scoreboard players reset @a takis.bs.fall

# remove text_displays that are not looked at
execute as @e[type=text_display, tag=takis.bs_display.active, scores={takis.bs.keep=0}] run function bookshelf:.dev/inspector/process/display/remove/start
