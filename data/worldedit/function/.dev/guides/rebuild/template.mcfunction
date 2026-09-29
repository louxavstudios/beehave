execute in minecraft:overworld run kill @e[type=minecraft:item_display,tag=worldedit.guides_template]
execute in minecraft:the_nether run kill @e[type=minecraft:item_display,tag=worldedit.guides_template]
execute in minecraft:the_end run kill @e[type=minecraft:item_display,tag=worldedit.guides_template]
summon minecraft:item_display ~ ~1 ~ {Tags:["worldedit.guides_template"],item:{id:"minecraft:white_shulker_box",count:1}}
item modify entity @e[type=minecraft:item_display,tag=worldedit.guides_template,distance=..2,limit=1,sort=nearest] contents worldedit:make_guides
data remove storage worldedit:guides template_work
data modify storage worldedit:guides template_work set from entity @e[type=minecraft:item_display,tag=worldedit.guides_template,distance=..2,limit=1,sort=nearest] item.components."minecraft:container"
kill @e[type=minecraft:item_display,tag=worldedit.guides_template,distance=..2]
execute unless data storage worldedit:guides template_work[0] run return 0
data remove storage worldedit:guides block_items
data modify storage worldedit:guides block_items set value []
execute if data storage worldedit:guides template_work[0] run function worldedit:.dev/guides/template/next
scoreboard players add #version worldedit.guides 1
scoreboard players set #ready worldedit.guides 1
execute in minecraft:overworld as @e[type=minecraft:marker,tag=worldedit.guides_box] at @s run function worldedit:.dev/guides/sync/one
execute in minecraft:the_nether as @e[type=minecraft:marker,tag=worldedit.guides_box] at @s run function worldedit:.dev/guides/sync/one
execute in minecraft:the_end as @e[type=minecraft:marker,tag=worldedit.guides_box] at @s run function worldedit:.dev/guides/sync/one
