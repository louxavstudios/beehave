scoreboard players operation #owner takis.fill.id = @s takis.fill.id
execute in minecraft:overworld as @e[type=minecraft:block_display,tag=takis.fill_box] if score @s takis.fill.id = #owner takis.fill.id run kill @s
execute in minecraft:the_nether as @e[type=minecraft:block_display,tag=takis.fill_box] if score @s takis.fill.id = #owner takis.fill.id run kill @s
execute in minecraft:the_end as @e[type=minecraft:block_display,tag=takis.fill_box] if score @s takis.fill.id = #owner takis.fill.id run kill @s
