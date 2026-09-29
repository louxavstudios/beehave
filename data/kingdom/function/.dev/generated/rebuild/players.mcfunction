# Generated exact-name player allowlist rebuild.
scoreboard players add #access kingdom.access.ver 1
tag @a remove takis.kingdom_allowed
tag @a remove takis.kingdom_allowed_kondom
data modify storage kingdom:kingdom allow_work set value []
data modify storage kingdom:kingdom allow_work set from storage kingdom:kingdom allowlists.kondom
data modify storage kingdom:kingdom allow_tag set value "takis.kingdom_allowed_kondom"
execute if data storage kingdom:kingdom allow_work[0] run function kingdom:.dev/allowlist/allow/next
tag @a remove takis.kingdom_allowed_lulu_village
data modify storage kingdom:kingdom allow_work set value []
data modify storage kingdom:kingdom allow_work set from storage kingdom:kingdom allowlists.lulu_village
data modify storage kingdom:kingdom allow_tag set value "takis.kingdom_allowed_lulu_village"
execute if data storage kingdom:kingdom allow_work[0] run function kingdom:.dev/allowlist/allow/next
tag @a remove takis.kingdom_allowed_sashx_anarchy
data modify storage kingdom:kingdom allow_work set value []
data modify storage kingdom:kingdom allow_work set from storage kingdom:kingdom allowlists.sashx_anarchy
data modify storage kingdom:kingdom allow_tag set value "takis.kingdom_allowed_sashx_anarchy"
execute if data storage kingdom:kingdom allow_work[0] run function kingdom:.dev/allowlist/allow/next
tag @a remove takis.kingdom_allowed_loisland
data modify storage kingdom:kingdom allow_work set value []
data modify storage kingdom:kingdom allow_work set from storage kingdom:kingdom allowlists.loisland
data modify storage kingdom:kingdom allow_tag set value "takis.kingdom_allowed_loisland"
execute if data storage kingdom:kingdom allow_work[0] run function kingdom:.dev/allowlist/allow/next
scoreboard players operation @a kingdom.access.ver = #access kingdom.access.ver
execute as @a run function kingdom:.dev/generated/apply/access
