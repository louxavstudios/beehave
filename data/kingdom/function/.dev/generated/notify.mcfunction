# Generated one-line entry and exit actionbar notifications.
execute if score @s kingdom.current matches 1 run title @s actionbar {"text":"You have entered Kondom, the territory is owned by xavthecave","color":"white"}
execute if score @s kingdom.current matches 0 if score @s kingdom.previous matches 1 run title @s actionbar {"text":"You have exited Kondom, xavthecave wishes you well","color":"white"}
execute if score @s kingdom.current matches 2 run title @s actionbar {"text":"You have entered Lulu Village, the territory is owned by hahaAngee_","color":"white"}
execute if score @s kingdom.current matches 0 if score @s kingdom.previous matches 2 run title @s actionbar {"text":"You have exited Lulu Village, hahaAngee_ wishes you well","color":"white"}
execute if score @s kingdom.current matches 3 run title @s actionbar {"text":"You have entered Sashx Anarchy, the territory is owned by Sashimir","color":"white"}
execute if score @s kingdom.current matches 0 if score @s kingdom.previous matches 3 run title @s actionbar {"text":"You have exited Sashx Anarchy, Sashimir wishes you well","color":"white"}
execute if score @s kingdom.current matches 4 run title @s actionbar {"text":"You have entered Loisland, the territory is owned by loangoncalves","color":"white"}
execute if score @s kingdom.current matches 0 if score @s kingdom.previous matches 4 run title @s actionbar {"text":"You have exited Loisland, loangoncalves wishes you well","color":"white"}
