scoreboard players operation #target takis.measure.id = @e[type=minecraft:interaction,tag=takis.tape_target,limit=1] takis.measure.id
execute as @e[type=minecraft:text_display,tag=takis.tape_text] if score @s takis.measure.id = #target takis.measure.id run kill @s
execute as @e[type=minecraft:interaction,tag=takis.tape_hitbox] if score @s takis.measure.id = #target takis.measure.id run kill @s
function worldedit:.dev/notification/tape/measure/removed/tip
