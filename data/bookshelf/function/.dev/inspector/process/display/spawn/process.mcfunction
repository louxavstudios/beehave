# text_display extending tick clock
# @s = extending text_display
# at unspecified
# run from process_display/spawn/tick

scoreboard players add @s takis.bs.state 1

execute if score @s takis.bs.state matches 2 run data merge entity @s {start_interpolation:-1,interpolation_duration:2,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.3f,0.0f],scale:[0.6f,0.6f,0.6f]}}

execute if score @s takis.bs.state matches 4 run tag @s add takis.bs_display.active
execute if score @s takis.bs.state matches 4 run tag @s remove takis.bs_display.extending

execute unless score @s takis.bs.state matches 4 run scoreboard players set $keep_loop_active takis.bs.data 1
