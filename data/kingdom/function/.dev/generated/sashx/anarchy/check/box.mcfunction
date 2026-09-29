execute unless block ~ ~ ~ #minecraft:shulker_boxes run return run kill @s
execute unless data block ~ ~ ~ {CustomName:{"text":"Sashx Anarchy"}} unless data block ~ ~ ~ {CustomName:"Sashx Anarchy"} run return run kill @s
execute unless score @s kingdom.box.ver = #v3 kingdom.meta run function kingdom:.dev/generated/sashx/anarchy/sync/one
function kingdom:.dev/generated/sashx/anarchy/check/contents
