# text_display extending tick clock
# @s = unspecified
# at unspecified
# schedule from process_display/spawn/init
# schedule from here

scoreboard players set $keep_loop_active takis.bs.data 0

execute as @e[type=text_display, tag=takis.bs_display.extending] run function bookshelf:.dev/inspector/process/display/spawn/process

execute if score $keep_loop_active takis.bs.data matches 1 run schedule function bookshelf:.dev/inspector/process/display/spawn/tick 1
