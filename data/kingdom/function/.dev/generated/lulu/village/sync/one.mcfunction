execute unless block ~ ~ ~ #minecraft:shulker_boxes run return run kill @s
data modify block ~ ~ ~ Items set from storage kingdom:kingdom allowlists.lulu_village
data modify entity @s data.last_items set from storage kingdom:kingdom allowlists.lulu_village
scoreboard players operation @s kingdom.box.ver = #v2 kingdom.meta
