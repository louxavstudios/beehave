execute unless block ~ ~ ~ #minecraft:shulker_boxes run return run kill @s
execute unless data block ~ ~ ~ {CustomName:{"text":"Kondom"}} unless data block ~ ~ ~ {CustomName:"Kondom"} run return run kill @s
execute unless score @s kingdom.box.ver = #v1 kingdom.meta run function kingdom:.dev/generated/kondom/sync/one
function kingdom:.dev/generated/kondom/check/contents
