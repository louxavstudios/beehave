# init text display
# @s = text display
# at chiseled bookshelf, selected book slot
# run from process_display/locate_slot

# schedule tick function unless it's already active
execute unless entity @e[type=text_display, tag=takis.bs_display.extending] run schedule function bookshelf:.dev/inspector/process/display/spawn/tick 1

# set data
data merge entity @s {Tags:["takis.bs_display","takis.bs_display.extending"],default_background:1b,view_range:0.05f,see_through:1b,line_width:130,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.0f,0.0f]},text:{text:"???"}}

# build text storage
data modify storage bookshelf:inspector text set value []
function bookshelf:.dev/inspector/process/display/spawn/decide/name
data modify entity @s text set value {nbt:"text[]",storage:"bookshelf:inspector",separator:"\n",interpret:true}
data remove storage bookshelf:inspector text

# set rotation
execute if score $rotation takis.bs.data matches 1 run data modify entity @s Rotation set value [0.0f,0.0f]
execute if score $rotation takis.bs.data matches 2 run data modify entity @s Rotation set value [180.0f,0.0f]
execute if score $rotation takis.bs.data matches 3 run data modify entity @s Rotation set value [-90.0f,0.0f]
execute if score $rotation takis.bs.data matches 4 run data modify entity @s Rotation set value [90.0f,0.0f]

scoreboard players set @s takis.bs.keep 1
