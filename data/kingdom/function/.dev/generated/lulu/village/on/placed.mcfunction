advancement revoke @s only kingdom:generated/lulu/village/placed/allowlist
execute unless entity @s[name=hahaAngee_] run return 0
scoreboard players set @s takis.ray 0
execute at @s anchored eyes positioned ^ ^ ^0.1 run function kingdom:.dev/generated/lulu/village/find/box
