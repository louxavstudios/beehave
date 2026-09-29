function worldedit:.dev/runtime/fill/helper/remove/box
scoreboard players set @s takis.fill.state 0
scoreboard players reset @s takis.fill.x1
scoreboard players reset @s takis.fill.y1
scoreboard players reset @s takis.fill.z1
scoreboard players reset @s takis.fill.x2
scoreboard players reset @s takis.fill.y2
scoreboard players reset @s takis.fill.z2
scoreboard players set @s worldedit.paste 0
function worldedit:.dev/notification/fill/cleared/tip
