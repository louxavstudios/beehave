scoreboard players operation #mx takis.tape.math = #dx takis.tape.math
scoreboard players operation #mx takis.tape.math *= @s takis.tape.index
scoreboard players operation #mx takis.tape.math /= #div takis.tape.math
scoreboard players operation #mx takis.tape.math += @s takis.tape.x1
scoreboard players operation #my takis.tape.math = #dy takis.tape.math
scoreboard players operation #my takis.tape.math *= @s takis.tape.index
scoreboard players operation #my takis.tape.math /= #div takis.tape.math
scoreboard players operation #my takis.tape.math += @s takis.tape.y1
scoreboard players operation #mz takis.tape.math = #dz takis.tape.math
scoreboard players operation #mz takis.tape.math *= @s takis.tape.index
scoreboard players operation #mz takis.tape.math /= #div takis.tape.math
scoreboard players operation #mz takis.tape.math += @s takis.tape.z1

execute store result storage worldedit:tape marker.x int 1 run scoreboard players get #mx takis.tape.math
execute store result storage worldedit:tape marker.y int 1 run scoreboard players get #my takis.tape.math
execute store result storage worldedit:tape marker.z int 1 run scoreboard players get #mz takis.tape.math
scoreboard players operation #number takis.tape.math = @s takis.tape.index
scoreboard players add #number takis.tape.math 1
execute store result storage worldedit:tape marker.number int 1 run scoreboard players get #number takis.tape.math
function worldedit:.dev/runtime/tape/measure/spawn with storage worldedit:tape marker

scoreboard players add @s takis.tape.index 1
execute if score @s takis.tape.index <= @s takis.tape.steps run function worldedit:.dev/runtime/tape/measure/loop
