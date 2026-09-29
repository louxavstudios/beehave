scoreboard players set #mounted worldedit.holy 0
execute on vehicle run scoreboard players set #mounted worldedit.holy 1
execute unless score #mounted worldedit.holy matches 1 run function worldedit:.dev/hole/projectile/impact
