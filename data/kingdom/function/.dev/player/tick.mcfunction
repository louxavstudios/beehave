scoreboard players add @s kingdom.inside 0
scoreboard players add @s kingdom.access.ver 0
scoreboard players add @s kingdom.current 0
scoreboard players add @s kingdom.previous 0
execute unless score @s kingdom.access.ver = #access kingdom.access.ver run function kingdom:.dev/generated/rebuild/players

execute unless predicate kingdom:in_overworld if score @s kingdom.current matches 1.. run function kingdom:.dev/exit/dimension
execute unless predicate kingdom:in_overworld run scoreboard players set @s kingdom.inside 0
execute if predicate kingdom:in_overworld run function kingdom:.dev/check/chunk

# A command or another system may restore Survival. Reapply only the cached
# restriction; other gamemodes remain Law's independent responsibility.
execute if entity @s[tag=takis.kingdom_restricted,gamemode=survival] run gamemode adventure @s
