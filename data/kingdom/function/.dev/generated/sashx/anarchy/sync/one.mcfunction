execute unless block ~ ~ ~ #minecraft:shulker_boxes run return run kill @s
data modify block ~ ~ ~ Items set from storage kingdom:kingdom allowlists.sashx_anarchy
data modify entity @s data.last_items set from storage kingdom:kingdom allowlists.sashx_anarchy
scoreboard players operation @s kingdom.box.ver = #v3 kingdom.meta
