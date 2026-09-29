# Generated per-kingdom build-access dispatch.
execute if score @s kingdom.current matches 1 if entity @s[tag=takis.kingdom_allowed_kondom] run function kingdom:.dev/leave
execute if score @s kingdom.current matches 1 unless entity @s[tag=takis.kingdom_allowed_kondom] if entity @s[gamemode=survival] run function kingdom:.dev/restrict
execute if score @s kingdom.current matches 2 if entity @s[tag=takis.kingdom_allowed_lulu_village] run function kingdom:.dev/leave
execute if score @s kingdom.current matches 2 unless entity @s[tag=takis.kingdom_allowed_lulu_village] if entity @s[gamemode=survival] run function kingdom:.dev/restrict
execute if score @s kingdom.current matches 3 if entity @s[tag=takis.kingdom_allowed_sashx_anarchy] run function kingdom:.dev/leave
execute if score @s kingdom.current matches 3 unless entity @s[tag=takis.kingdom_allowed_sashx_anarchy] if entity @s[gamemode=survival] run function kingdom:.dev/restrict
execute if score @s kingdom.current matches 4 if entity @s[tag=takis.kingdom_allowed_loisland] run function kingdom:.dev/leave
execute if score @s kingdom.current matches 4 unless entity @s[tag=takis.kingdom_allowed_loisland] if entity @s[gamemode=survival] run function kingdom:.dev/restrict
