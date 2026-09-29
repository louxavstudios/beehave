execute if block ~ ~ ~ #worldedit:block/replacer/protected run function notice:.dev/brush/protected/error
execute if block ~ ~ ~ #worldedit:block/replacer/protected run return 0
$execute store success score @s takis.brush.ok run setblock ~ ~ ~ $(block) destroy
execute if score @s takis.brush.ok matches 1 run item modify entity @s weapon.offhand worldedit:consume
