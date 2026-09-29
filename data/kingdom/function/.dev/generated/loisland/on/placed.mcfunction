advancement revoke @s only kingdom:generated/loisland/placed/allowlist
execute unless entity @s[name=loangoncalves] run return 0
scoreboard players set @s takis.ray 0
execute at @s anchored eyes positioned ^ ^ ^0.1 run function kingdom:.dev/generated/loisland/find/box
