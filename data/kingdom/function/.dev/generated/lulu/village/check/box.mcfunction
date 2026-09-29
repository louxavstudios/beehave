execute unless block ~ ~ ~ #minecraft:shulker_boxes run return run kill @s
execute unless data block ~ ~ ~ {CustomName:{"text":"Lulu Village"}} unless data block ~ ~ ~ {CustomName:"Lulu Village"} run return run kill @s
execute unless score @s kingdom.box.ver = #v2 kingdom.meta run function kingdom:.dev/generated/lulu/village/sync/one
function kingdom:.dev/generated/lulu/village/check/contents
