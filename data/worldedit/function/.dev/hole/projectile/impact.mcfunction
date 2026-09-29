scoreboard players operation #owner worldedit.holy = @s worldedit.holy
data modify storage worldedit:hole projectile.block set from entity @s data.block
data modify storage worldedit:hole projectile.x set from entity @s Pos[0]
data modify storage worldedit:hole projectile.z set from entity @s Pos[2]
data modify storage worldedit:hole projectile.cap set from entity @s data.cap
tag @s add worldedit.holy.impact
execute as @a if score @s takis.fill.id = #owner worldedit.holy at @e[type=minecraft:marker,tag=worldedit.holy.impact,limit=1,sort=nearest] run function worldedit:.dev/hole/projectile/fill with storage worldedit:hole projectile
kill @s
