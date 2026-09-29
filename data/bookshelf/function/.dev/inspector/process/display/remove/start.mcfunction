# remove a text_display no longer being looked at
# @s = text_display
# at unspecified
# run from main

# schedule tick function unless it's already active
execute unless entity @e[type=text_display, tag=takis.bs_display.removing] run schedule function bookshelf:.dev/inspector/process/display/remove/tick 1

tag @s remove takis.bs_display.active
tag @s add takis.bs_display.removing
