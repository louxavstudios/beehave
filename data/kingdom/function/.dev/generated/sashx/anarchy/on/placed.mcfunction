advancement revoke @s only kingdom:generated/sashx/anarchy/placed/allowlist
execute unless entity @s[name=Sashimir] run return 0
scoreboard players set @s takis.ray 0
execute at @s anchored eyes positioned ^ ^ ^0.1 run function kingdom:.dev/generated/sashx/anarchy/find/box
