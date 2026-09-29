execute unless block ~ ~ ~ #minecraft:shulker_boxes run return run kill @s
execute unless data block ~ ~ ~ {CustomName:{"text":"Loisland"}} unless data block ~ ~ ~ {CustomName:"Loisland"} run return run kill @s
execute unless score @s kingdom.box.ver = #v4 kingdom.meta run function kingdom:.dev/generated/loisland/sync/one
function kingdom:.dev/generated/loisland/check/contents
