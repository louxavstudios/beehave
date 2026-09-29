scoreboard players operation #owner takis.tape.id = @s takis.tape.id
tag @e[type=minecraft:marker,tag=takis.tape_origin] remove takis.tape_origin
execute as @e[type=minecraft:marker,tag=takis.tape_pos1] if score @s takis.tape.id = #owner takis.tape.id run tag @s add takis.tape_origin
execute unless entity @e[type=minecraft:marker,tag=takis.tape_origin,limit=1] run return run function worldedit:.dev/notification/tape/dimension/mismatch/error

scoreboard players add #next takis.measure.id 1
scoreboard players operation #current takis.measure.id = #next takis.measure.id

scoreboard players operation #dx takis.tape.math = @s takis.tape.x2
scoreboard players operation #dx takis.tape.math -= @s takis.tape.x1
scoreboard players operation #dy takis.tape.math = @s takis.tape.y2
scoreboard players operation #dy takis.tape.math -= @s takis.tape.y1
scoreboard players operation #dz takis.tape.math = @s takis.tape.z2
scoreboard players operation #dz takis.tape.math -= @s takis.tape.z1

scoreboard players operation #ax takis.tape.math = #dx takis.tape.math
scoreboard players operation #ay takis.tape.math = #dy takis.tape.math
scoreboard players operation #az takis.tape.math = #dz takis.tape.math
scoreboard players set #-1 takis.tape.math -1
execute if score #ax takis.tape.math matches ..-1 run scoreboard players operation #ax takis.tape.math *= #-1 takis.tape.math
execute if score #ay takis.tape.math matches ..-1 run scoreboard players operation #ay takis.tape.math *= #-1 takis.tape.math
execute if score #az takis.tape.math matches ..-1 run scoreboard players operation #az takis.tape.math *= #-1 takis.tape.math

scoreboard players operation @s takis.tape.steps = #ax takis.tape.math
execute if score #ay takis.tape.math > @s takis.tape.steps run scoreboard players operation @s takis.tape.steps = #ay takis.tape.math
execute if score #az takis.tape.math > @s takis.tape.steps run scoreboard players operation @s takis.tape.steps = #az takis.tape.math
scoreboard players operation #div takis.tape.math = @s takis.tape.steps
execute if score #div takis.tape.math matches 0 run scoreboard players set #div takis.tape.math 1

scoreboard players set @s takis.tape.index 0
function worldedit:.dev/runtime/tape/measure/loop

kill @e[type=minecraft:marker,tag=takis.tape_origin]
function worldedit:.dev/notification/tape/measure/created/success
