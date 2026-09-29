execute unless block ~ ~ ~ #minecraft:shulker_boxes run return run kill @s
data modify block ~ ~ ~ Items set from storage kingdom:kingdom allowlists.loisland
data modify entity @s data.last_items set from storage kingdom:kingdom allowlists.loisland
scoreboard players operation @s kingdom.box.ver = #v4 kingdom.meta
