# Build block-entity inventory data beside an online player, where the temporary
# item is immediately available to selectors in the same loaded chunk.
execute in minecraft:overworld run kill @e[type=minecraft:item,tag=takis.guides_template]
execute in minecraft:the_nether run kill @e[type=minecraft:item,tag=takis.guides_template]
execute in minecraft:the_end run kill @e[type=minecraft:item,tag=takis.guides_template]
execute in minecraft:overworld run kill @e[type=minecraft:item_display,tag=takis.guides_template]
execute in minecraft:the_nether run kill @e[type=minecraft:item_display,tag=takis.guides_template]
execute in minecraft:the_end run kill @e[type=minecraft:item_display,tag=takis.guides_template]
summon minecraft:item_display ~ ~1 ~ {Tags:["takis.guides_template"],item:{id:"minecraft:white_shulker_box",count:1}}
item modify entity @e[type=minecraft:item_display,tag=takis.guides_template,distance=..2,limit=1,sort=nearest] contents guides:make
data remove storage guides:guides template_work
data modify storage guides:guides template_work set from entity @e[type=minecraft:item_display,tag=takis.guides_template,distance=..2,limit=1,sort=nearest] item.components."minecraft:container"
kill @e[type=minecraft:item_display,tag=takis.guides_template,distance=..2]
# Never replace the last valid template if generation unexpectedly fails.
execute unless data storage guides:guides template_work[0] run return 0
data remove storage guides:guides block_items
data modify storage guides:guides block_items set value []
execute if data storage guides:guides template_work[0] run function guides:.dev/template/next
scoreboard players add #version takis.guides 1
scoreboard players set #ready takis.guides 1
execute in minecraft:overworld as @e[type=minecraft:marker,tag=takis.guides_box] at @s run function guides:.dev/sync/one
execute in minecraft:the_nether as @e[type=minecraft:marker,tag=takis.guides_box] at @s run function guides:.dev/sync/one
execute in minecraft:the_end as @e[type=minecraft:marker,tag=takis.guides_box] at @s run function guides:.dev/sync/one
