# text_display removing tick clock
# @s = removing text_display
# at unspecified
# run from process_display/remove/tick

scoreboard players add @s takis.bs.state 1

execute if score @s takis.bs.state matches 6 run data merge entity @s {start_interpolation:-1,interpolation_duration:5,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]}}
execute unless score @s takis.bs.state matches 9 run scoreboard players set $keep_loop_active takis.bs.data 1
execute if score @s takis.bs.state matches 9 run kill @s
